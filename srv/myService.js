module.exports =(srv) =>{

    srv.on('DurgaLearnings',(req, res)=>{
        return "hello" + req.data.input ;
    })
}