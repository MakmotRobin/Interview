import java.util.ArrayList;

class Call {
    private int duration;

    public Call(int duration) {
        this.duration = duration;
    }

    public int getDuration() {
        return duration;
    }
}

class SIM {
    private String phoneNumber;
    private double credit;
    private ArrayList<Call> callList;

    public SIM(String phoneNumber, double credit) {
        this.phoneNumber = phoneNumber;
        this.credit = credit;
        this.callList = new ArrayList<>();
    }

    public void makeCall(int duration) {
        Call newCall = new Call(duration);
        callList.add(newCall);
    }

    public int getTotalMinutesOfConversation() {
        int totalMinutes = 0;
        for (Call call : callList) {
            totalMinutes += call.getDuration();
        }
        return totalMinutes;
    }

    public int getCallsToNumber(String targetNumber) {
        int callsToNumber = 0;
        for (Call call : callList) {
            if (targetNumber.equals(phoneNumber)) {
                callsToNumber++;
            }
        }
        return callsToNumber;
    }

    public void printSIMData() {
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Available Credit: " + credit + " euro");
        System.out.println("List of Phone Calls:");
        for (int i = 0; i < callList.size(); i++) {
            System.out.println("Call " + (i + 1) + ": Duration - " + callList.get(i).getDuration() + " minutes");
        }
    }
}

public class Interview {
    public static void main(String[] args) {
        SIM simCard = new SIM("123456789", 10.0);

        simCard.makeCall(5);
        simCard.makeCall(8);
        simCard.makeCall(10);

        System.out.println("Total Minutes of Conversation: " + simCard.getTotalMinutesOfConversation());

        System.out.println("Calls Made to Number 123456789: " + simCard.getCallsToNumber("123456789"));

        simCard.printSIMData();
    }
}
