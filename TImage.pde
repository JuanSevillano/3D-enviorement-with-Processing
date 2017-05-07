/* Clase para guardar gif del canvas */ 

class TImage extends PImage implements Runnable{//separate thread for saving images
  String filename;

  TImage(int w,int h,int format,String filename){
    this.filename = filename;
    init(w,h,format);
  }

  public void saveThreaded(){
    new Thread(this).start();
  }

  public void run(){
    this.save(filename);
  }

}