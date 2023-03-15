/* Dynamic array */
pragma solidity ^0.8.0;

contract MyContract {
    uint[] public myArray;

    function addToArray(uint _value) public {
        myArray.push(_value);
    }

    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }
}

/* Fixed size array */
pragma solidity ^0.8.0;

contract MyContract {
    uint[3] public myArray;

    function setArrayValues(uint _value1, uint _value2, uint _value3) public {
        myArray[0] = _value1;
        myArray[1] = _value2;
        myArray[2] = _value3;
    }

    function getArrayLength() public pure returns (uint) {
        return myArray.length;
    }
}

/* Array of Structs */
pragma solidity ^0.8.0;

contract MyContract {
    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public {
        Person memory newPerson = Person(_name, _age);
        people.push(newPerson);
    }

    function getPersonName(uint _index) public view returns (string memory) {
        return people[_index].name;
    }
}