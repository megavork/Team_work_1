package personsBase;

import person.Person;
import java.util.ArrayList;
import java.util.Comparator;

public class BaseOfPersons {
    ArrayList<Person> list;

    public BaseOfPersons() {
        this.list = new ArrayList();
    }

    public void addPerson(Person person) {
        list.add(person);
    }

    public ArrayList<Person> getAllPersons() {
        return list;
    }

    public ArrayList<Person> getFullSortedList() {
        list.sort(new Comparator<Person>() {
            @Override
            public int compare(Person o1, Person o2) {
                if(o1.getPrice() == o2.getPrice()) {
                    return o1.getRegion().compareTo(o2.getRegion());
                } else if(o1.getPrice() > o2.getPrice()){
                    return (int) (o1.getPrice() - o2.getPrice());
                } else {
                    return (int) (o1.getPrice() - o2.getPrice());
                }
            }
        });
        return list;
    }
    public boolean isEmpty() {
        return list.isEmpty();
    }
}
