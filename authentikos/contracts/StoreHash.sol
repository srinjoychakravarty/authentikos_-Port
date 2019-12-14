//0x32804f2B543f4EbEce478D9847d8446650840128  contract address on rinkeby
//deployed using remix 

pragma solidity 0.5.13;


contract Contract { 
    
    // uploads the images or video on authentikos
    struct MediaJournalist 
    {
        // string name;
        // string emailId;
        // string phoneNumber;
        // string stateId;
        string workLicense;
    } 

    // provides news to the editors/publishers/journalists for publishing
    struct NewsAgency 
    {
        // string name;
        // string licenseHash;
        // string addressProof;
        string domainName;
        // string workPermit;
        // string experienceCertificate;
    }

    // writes, modifies and publishes the news on authentikos
    struct PublishingDistributor 
    {
        // uint age;
        // string name;
        // int8 contactNumber;
        // string emailAddress;
        // string designation;
        string industryLicense;
        // string professionalCertificate;
    }

    // approves or marks news items as spam by scanning qrcodes on them
    struct CrowdAuditor 
    {
        string passportNum;
    }

    struct User 
    {
        string name;
        uint level;
    }

    mapping (address => User) userStructs;

    mapping (address => CrowdAuditor) crowdAuditorStructs;
    mapping (address => PublishingDistributor) publishingDistributorStructs;
    mapping (address => NewsAgency) newsAgencyStructs;
    mapping (address => MediaJournalist) mediaJournalistStructs;

    mapping (address => uploads) journalistUploads;

    address[] public userAddresses;

    address[] public crowdAuditorAddresses;
    address[] public publishingDistributorAddresses;
    address[] public newsAgencyAddresses;
    address[] public mediaJournalistAddresses;


    function CrowdAuditor(string memory name, string memory passport) 
    {
        // set User name using our userStructs mapping
        userStructs[msg.sender].name = name;
        // set User level using our userStructs mapping
        userStructs[msg.sender].level = level;
        // push user address into userAddresses array
        userAddresses.push(msg.sender);
    }

    function getAllUsers() external view returns (address[]) 
    {
        return userAddresses;
    }

    address[] public journalistPublicKeys;
    string[] public uploads;

    string public ipfsHash;
    string public bigChainDBHash;
    

    event IpfsHash(string ipfs_hash, address sender);  

    function setJournalist(address _address, uint _age, string memory name) public 
    {
        journalists[_address].age = _age;
        journalists[_address].name = _name;
        journalistPublicKeys.push(_address);
    }
    
    function getJournalists() view public returns(address[] memory) 
    {
        return journalistPublicKeys;
    }
    
    function getJournalist(address _address) view public returns (uint, string memory) 
    {
        return (journalists[_address].age, journalists[_address].name);
    }
    
    function countjournalists() view public returns (uint256) 
    {
        return journalistPublicKeys.length;
    }

    function sendHash(string memory _hash) public 
    {   
        ipfsHash = _hash; 
        emit IpfsHash(ipfsHash, msg.sender);
    } 
    
    function getHash() public view returns (string memory x) 
    {   
        return ipfsHash;       
    }
}