pragma solidity ^0.8.0;

contract MyContract {
    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age));
    }
}

/* In this example, the Person struct has two properties: name (a string) and age (an unsigned integer). The people variable is an array of Person objects. The addPerson function allows you to add a new Person object to the people array by passing in the name and age as arguments. */