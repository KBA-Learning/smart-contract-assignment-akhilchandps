// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract MyBook {
    string title; 
    uint16 price; 
    address public owner;
    bool public sold;

    // Read 
    function getBookDetails() public view returns (string memory, uint16) {
        return (title, price);
    }

  //write
    function setBookDetails(string memory _title, uint16 _price) public {
        title = _title;  
        price = _price;
        owner=msg.sender;
        sold=false;  
     }
  

   
   function ethTowei(uint eval) public pure returns (uint){
    return(eval*1000000000000000000);
   }

  //calculate address: 0x617F2E2fD72FD9D5503197092aC168c91465E7f2  0x17F6AD8Ef982297579C203069C1DbfFE4348c372


 function buyBook() public payable {
 
    if(msg.value >= ethTowei(price)){
        uint bal = msg.value - ethTowei(price);
      if(bal >0)
        payable(msg.sender).transfer(bal);
      payable(owner).transfer(ethTowei(price));
      owner = msg.sender;
      sold = true;
    }else{
      payable(msg.sender).transfer(msg.value);
    }

 }

}