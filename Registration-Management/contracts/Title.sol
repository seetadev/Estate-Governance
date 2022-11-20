pragma solidity ^0.4.24;

contract Title{
    
    address owner;
    mapping(uint16 => address) internal identity;
    mapping(uint16 => uint16) internal asset;
    uint16[] properties ;

    event identity_mismatch(uint16 ssn, address adr);
    event property_mismatch(uint16 pid, uint16 ssn);

    constructor() public{
        owner = msg.sender;
    }

    function register_ssn(uint16 ssn) public{
        if (identity[ssn] != 0){
            emit identity_mismatch(ssn,msg.sender);
            return;
        }
        identity[ssn] = msg.sender;
        //owner.transfer(500);
    }

    function register_pid(uint16 pid, uint16 ssn) public{
        if (identity[ssn] != msg.sender){
            emit identity_mismatch(ssn,msg.sender);
            return;
        }
        if(asset[pid] != 0){
            emit property_mismatch(pid,ssn);
            return;
        }
        properties.push(pid);
        asset[pid] = ssn;
    }

    function transfer_pid(uint16 pid, uint16 ssn, uint16 buyer) public{
        if (identity[ssn] != msg.sender){
            emit identity_mismatch(ssn,msg.sender);
            return;
        }
        if(asset[pid] != ssn){
            emit property_mismatch(pid,ssn);
            return;
        }
        asset[pid] = buyer;
    }

    function get_properties_length() public view returns(uint length){
        return properties.length;
    }

    function get_owner() public view returns(address own){
        return owner;
    }

    function get_pid(uint index) public view returns(uint16 pid, uint16 ssn){
        require(index < properties.length);
		pid = properties[index];
		ssn = asset[pid];
        return (pid,ssn);
    }

    function get_ssn(uint16 pid) public view returns(uint16 ssn){
        return asset[pid];
    }

}