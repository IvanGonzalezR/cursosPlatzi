import java.util.Scanner;

public class ejercicio1 {
    /**
     * Descripcion:
     * @param args Cantidad de dinero.
     * @return quantity
     * */
    public static void main(String[] args) {
        var opcion = 0;

        String nombres[] = new String[15];
        System.out.println("elige una opcion, 1, 2 o 3");
        do {
            System.out.println("opcion 1");
            System.out.println("opcion 2");
            System.out.println("opcion 3");

            Scanner sc = new Scanner(System.in);
            opcion = Integer.parseInt(sc.nextLine());

            switch(opcion){
                case 1:
                    System.out.println("\nElegida opcion 1");
                    break;
                case 2:
                    System.out.println("\nElegida opcion 2");
                    break;
                case 3:
                    System.out.println("\nGracias por visitarnos");
                    System.out.println();
                    break;
            }
        }while(opcion != 3);
    }
}
