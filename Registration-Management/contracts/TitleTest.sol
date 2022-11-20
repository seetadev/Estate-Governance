pragma solidity >=0.4.22 <0.6.0;

import "./Title.sol";

contract TitleTest is Title {
	function test_reg_ssn() public{
		register_ssn(1640);
		register_ssn(1639);
		require(identity[1640]==msg.sender,"SSN 1640 not registered with sender.");
		require(identity[1639]==msg.sender,"SSN 1639 not registered with sender.");
	}
	
	function test_reg_pid() public{
		register_pid(10,1640);
		register_pid(11,1639);
		require(asset[10]==1640,"PID 10 not registered with sender SSN 1640.");
		require(asset[11]==1639,"PID 11 not registered with sender SSN 1639.");
	}
	
	function test_transfer_pid() public{
		transfer_pid(10,1640,1639);
		require(asset[10]==1639,"PID 10 not transferred from 1640 to 1639.");
	}
}
