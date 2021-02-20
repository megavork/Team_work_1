package util;

public class Calc {

    private static double convertToDouble(String price) {
        double result = 0;
        try {
            result = (double) Double.parseDouble(price);
        } catch (Exception e) {

        }
        return result;
    }


    public static double getTax(String sex, String region, String price) {
        double income = convertToDouble(price);
        double tax = 0;
        if (income > 1080) {
            tax = (income - 1080) * 0.3 + 240 * 0.09 + 360 * 0.15 + 240 * 0.2 + 240 * 0.25;
        } else if (income > 840 && income <= 1080) {
            tax = (income - 840) * 0.25 + 240 * 0.09 + 360 * 0.15 + 240 * 0.2;
        } else if (income > 600 && income <= 840) {
            tax = (income - 600) * 0.2 + 240 * 0.09 + 360 * 0.15;
        } else if (income > 240 && income <= 600) {
            tax = (income - 240) * 0.15 + 240 * 0.09;
        } else if (income > 0 && income <= 240) {
            tax = income * 0.09;
        }
        if (sex.toUpperCase().equals("WOMEN")) {
            tax *=0.95;
        }
        if (region.toUpperCase().equals("MINSK")) {
            tax *= 1.05;
        } else {
            tax *= 0.95;
        }
        tax *= 27;      //convert to BYN from base value.
        return tax;
    }
}
