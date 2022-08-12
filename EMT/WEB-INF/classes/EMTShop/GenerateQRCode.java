package EMTShop;

    import java.io.File;  
    import java.io.IOException;  
    import java.util.HashMap;  
    import java.util.Map;  
    import com.google.zxing.BarcodeFormat;  
    import com.google.zxing.EncodeHintType;  
    import com.google.zxing.MultiFormatWriter;  
    import com.google.zxing.NotFoundException;  
    import com.google.zxing.WriterException;  
    import com.google.zxing.client.j2se.MatrixToImageWriter;  
    import com.google.zxing.common.BitMatrix;  
    import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;  
    public class GenerateQRCode{  
    //static function that creates QR Code  
    public  void generateQRcode(String data) throws WriterException, IOException {  
    String path = "EMTShop/barcodes/" + data +".png";  
    //the BitMatrix class represents the 2D matrix of bits  
    //MultiFormatWriter is a factory class that finds the appropriate Writer subclass for the BarcodeFormat requested and encodes the barcode with the supplied contents.  
    BitMatrix matrix = new MultiFormatWriter().encode(new String(data.getBytes("UTF-8"), "UTF-8"), BarcodeFormat.QR_CODE, 200, 200);  
    MatrixToImageWriter.writeToFile(matrix, path.substring(path.lastIndexOf('.') + 1), new File(path));  
    }  
    //main() method  
    public static void main(String args[]) throws WriterException, IOException, NotFoundException  { 
    GenerateQRCode g = new GenerateQRCode();
     
    //data that we want to store in the QR code  
    String str= "THE HABIT OF PERSISTENCE IS THE HABIT OF VICTORY.";  
    //path where we want to get QR Code  
    //Encoding charset to be used  
    //generates QR code with Low level(L) error correction capability  
    //invoking the user-defined method that creates the QR code  
    g.generateQRcode(str);//increase or decrease height and width accodingly   
    //prints if the QR code is generated   
    System.out.println("QR Code created successfully.");  
    }  
    }  