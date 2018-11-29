package com.zhou.meishimeike.controller;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet ����������֤��,��������session������
 */
@Controller
public class DrawImage extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public static final int WIDTH = 120;
	public static final int HEIGHT = 30;
	// �ڱ�java.lang.NoClassDefFoundError: Could not initialize class
	// javax.imageio.ImageIO���ʱ���������ܹ��á�
	static
	{
		ImageIO.scanForPlugins();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}
	
	@RequestMapping("/DrawImage")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("utf-8");
		response.setContentType("image/jpeg");
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// ��������
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		// ��û���
		Graphics g = bi.getGraphics();
		// ���ñ�Ӱɫ
		setBackGround(g);
		// ���ñ߿�
		setBorder(g);
		// ��������
		drawRandomLine(g);
		// д�����
		String random = drawRandomNum((Graphics2D) g);
		// ��������ִ���session��
		request.getSession().setAttribute("ckimg", random);
		// ��ͼ��д�������
		
		// ��ͷ�����������Ҫ����
		
		// ��ͼƬд�������
		ImageIO.write(bi, "jpg", response.getOutputStream());
	}
	/**
	 * ���ñ���ɫ
	 * 
	 * @param g
	 */
	private void setBackGround(Graphics g)
	{
		// ������ɫ
		g.setColor(new Color(249, 249, 249));
		// �������
		g.fillRect(0, 0, WIDTH, HEIGHT);
	}
	/**
	 * ���ñ߿�
	 * 
	 * @param g
	 */
	private void setBorder(Graphics g)
	{
		// ���ñ߿���ɫ
		// RGB
		g.setColor(new Color(210, 209, 205));
		// �߿�����
		g.drawRect(1, 1, WIDTH - 2, HEIGHT - 2);
	}
	/**
	 * ���������
	 * 
	 * @param g
	 */
	private void drawRandomLine(Graphics g)
	{
		// ������ɫ
		g.setColor(Color.GRAY);
		// ������������������
		/*for (int i = 0; i < 5; i++)
		{
			int x1 = new Random().nextInt(WIDTH);
			int y1 = new Random().nextInt(HEIGHT);
			int x2 = new Random().nextInt(WIDTH);
			int y2 = new Random().nextInt(HEIGHT);
			g.drawLine(x1, y1, x2, y2);
		}*/
		//������һ���ᴩ����
		int y1 = HEIGHT/2;
		int x2 = WIDTH-8;
		int y2 =HEIGHT/2;
		int x1 =4;
		g.drawLine(x1, y1, x2, y2);
	}
	/**
	 * �����ֵ
	 * 
	 * @param g
	 * @return
	 */
	private String drawRandomNum(Graphics2D g)
	{
		StringBuffer sb = new StringBuffer();
		// ��������
		g.setFont(new Font("����", Font.BOLD, 20));
		
		String base = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		int x = 5;
		// ��������
		for (int i = 0; i < 4; i++)
		{
			// ����0-255�������
			int R = new Random().nextInt(256);
			int G = new Random().nextInt(256);
			int B = new Random().nextInt(256);
			// ����ÿ�����������ɫ
			g.setColor(new Color(R, G, B));
			// ����������ת�Ƕ�
			int degree = new Random().nextInt() % 30;
			// ��ȡ����
			String ch = base.charAt(new Random().nextInt(base.length())) + "";
			sb.append(ch);
			// ����Ƕ�
			g.rotate(degree * Math.PI / 180, x, 20);
			g.drawString(ch, x, 20);
			// ����Ƕ�
			g.rotate(-degree * Math.PI / 180, x, 20);
			x += 30;
		}
		return sb.toString();
	}
}
