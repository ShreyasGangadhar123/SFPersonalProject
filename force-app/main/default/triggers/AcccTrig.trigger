trigger AcccTrig on Account (before insert,before update) {
    for(Account acc:Trigger.new)
    {
        if(acc.Rating=='Hot')
        {
            acc.Description='Rating is null';
        }
    }
}