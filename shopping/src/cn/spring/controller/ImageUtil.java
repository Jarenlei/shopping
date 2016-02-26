package cn.spring.controller;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.awt.Font;

import javax.imageio.ImageIO;

public class ImageUtil {

    private static int getLength(String text) {
        int length = 0;
        for (int i = 0; i < text.length(); i++) {
            if (new String(text.charAt(i) + "").getBytes().length > 1) {
                length += 2;
            } else {
                length += 1;
            }
        }
        return length / 2;
    }

    public static void main(String[] args) {
        try {
            // 画像の読み取り
            String test = "E:\\bq_result_border.png";
            String stamp = "E:\\stamp01.png";
            int fontSize = 130;
            String pressText = "6";
            int fontStyle = Font.BOLD;
            String fontFamily = "sans-serif";

            int fontSize2 = 65;
            String pressText2 = "10";
            int fontStyle2 = Font.BOLD;
            String fontFamily2 = "sans-serif";

            File backgroudImg = new File(test);
            BufferedImage backgroundImgBuffered = ImageIO.read(backgroudImg);
            int bwidth = backgroundImgBuffered.getWidth();
            int bheight = backgroundImgBuffered.getHeight();
            BufferedImage imageNew = new BufferedImage(bwidth, bheight, BufferedImage.TYPE_INT_ARGB);
            Graphics2D gd = imageNew.createGraphics();
            gd.drawImage(backgroundImgBuffered, null, 0, 0);
            gd.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            // フォントを設定する
            gd.setColor(Color.RED);

            gd.setFont(new Font(fontFamily, fontStyle, fontSize));
            gd.drawString(pressText, bwidth / 3 - (pressText.length() / 2.0f * fontSize), 275);
            
            gd.setColor(Color.BLACK);
            gd.setFont(new Font(fontFamily2, fontStyle2, fontSize2));
            gd.drawString(pressText2, (int) (bwidth / 1.5 - (getLength(pressText2) * fontSize2)), 275);

            if (pressText.equals(pressText2)) {
                File file2 = new File(stamp);
                BufferedImage stampImg = ImageIO.read(file2);
                gd.drawImage(stampImg, 400, 85, null);
            }

            // 新しい画像を作業する
            File outFile = new File("E:\\bq_result_test.png");
            ImageIO.write(imageNew, "png", outFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
