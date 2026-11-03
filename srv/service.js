//req
//req.data
//req.param
//before Create
//req.error(1,2) 1-> http Status Code, 2-> message to Cosnsumer
//req.reject - reject will STOP application immediatly will not proceeed further 
//SELECT
//INSERT
//DELETE
//req.query as cds.ql
//req.user


export default function(){
    //console.log('before create');
     this.before ('CREATE', 'Employess', (req) => {
     console.log('before create');
     if(!req.data.email){
        req.error(400, 'Email is Mandatory');
        return req;
     }
     if(!req.data.email.endsWith(".com")){
        req.error(400, 'Bad Email Address');
        return req;
     }
    });

    this.before ('CREATE', 'Laptops', async (req) => {  
        console.log(req.data)
        console.log(req.user);
        const serialNumb = req.data.serialNumber;
        console.log(serialNumb);
        const laptopExist = await SELECT.one.from('Laptops').where({serialNumber : serialNumb});
        console.log(laptopExist);
    });

// We use CDS.connect.to('-db')  -> to connect to external db
    
}