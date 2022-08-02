[1:49 PM] Ubale, Akshata
        [HttpGet]
        [Route("NameById/{id}")]
        public IHttpActionResult GetPersonName(int id)
        {
            Person personObj = personList.Find(item => item.ID == id);
            if (personObj != null)
            {
                return Ok(personObj.Name);
            }
            return NotFound();
        }

[1:49 PM] Ubale, Akshata
        [HttpDelete]
        [Route("{id}")]
        public IHttpActionResult Delete(int id)
        {
            Person obj = personList.Find(item => item.ID == id);
            if (obj != null)
            {
                bool isRemoved = personList.Remove(obj);
                if (isRemoved)
                {
                    return Ok(obj);
                }
            }
            return NotFound();
        }

