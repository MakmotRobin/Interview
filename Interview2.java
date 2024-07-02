class Product {
    private int barcode;
    private String summaryDescription;
    private double unitPrice;

    public Product(int barcode, String summaryDescription, double unitPrice) {
        this.barcode = barcode;
        this.summaryDescription = summaryDescription;
        this.unitPrice = unitPrice;
    }

    public int getBarcode() {
        return barcode;
    }

    public String getSummaryDescription() {
        return summaryDescription;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void applyDiscount() {
        double discountAmount = unitPrice * 0.05; // 5% discount
        unitPrice -= discountAmount;
    }

    @Override
    public String toString() {
        return "Product [Barcode: " + barcode + ", Summary Description: " + summaryDescription + ", Unit Price: " + unitPrice + "]";
    }
}

public class Interview2 {
    public static void main(String[] args) {
        Product product = new Product(12345, "Smartphone", 599.99);

        System.out.println("Original Unit Price: " + product.getUnitPrice());

        product.applyDiscount();
        System.out.println("Unit Price after 5% discount: " + product.getUnitPrice());

        System.out.println(product.toString());
    }
}