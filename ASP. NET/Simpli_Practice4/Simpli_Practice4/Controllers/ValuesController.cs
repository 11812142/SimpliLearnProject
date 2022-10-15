using Bal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Helper;
using Simpli_Practice4.Models;


namespace Simpli_Practice4.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values----receive
        Helper1 obj = null;
        public ValuesController()
        {
            obj = new Helper1();
        }
        [HttpGet]
        public List<marksmodel> marklist()
        {
            //return new string[] { "value1", "value2" };

            List<BAL> empbal = new List<BAL>();
            empbal = obj.listmarks();
            List<marksmodel> emps = new List<marksmodel>();
            foreach (var item in empbal)
            {
                //Employees emp = new Employees();
                emps.Add(new marksmodel
                {
                    student_id = item.student_id,
                    student_name = item.student_name,
                    subject_marks = item.subject_marks
                });
            }
            return emps;
        }
        public marksmodel marksbyid(int id)
        {
            BAL empbal = new BAL();
            empbal = obj.searchmarks(id);
            marksmodel emp = new marksmodel();
            emp.student_id = empbal.student_id;
            emp.student_name = empbal.student_name;
            emp.subject_marks = empbal.subject_marks;

            return emp;
            //return "value";
        }

        // POST api/<controller> --- Update
        public HttpResponseMessage Postmarks([FromBody] marksmodel empdata)
        {
            BAL empbal = new BAL();
            empbal.student_id = empdata.student_id;
            empbal.student_name = empdata.student_name;
            empbal.subject_marks = empdata.subject_marks;



            bool ans = obj.Addmarks(empbal);
            if (ans)
            {
                return Request.CreateResponse(HttpStatusCode.OK);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable);
            }

        }

        // PUT api/<controller>/5 -- add
        [HttpPut]


        public HttpResponseMessage Putmarks([FromBody] marksmodel empdata)
        {

            BAL empbal = new BAL();
            empbal.student_id = empdata.student_id;
            empbal.student_name = empdata.student_name;
            empbal.subject_marks = empdata.subject_marks;

            bool ans = obj.Editmarks(empbal);
            if (ans)
            {
                return Request.CreateResponse(HttpStatusCode.OK);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable);
            }
        }

        // DELETE api/<controller>/5 
        public HttpResponseMessage Deletemarks(int id)
        {
            bool ans = obj.removemarks(id);
            if (ans)
            {
                return Request.CreateResponse(HttpStatusCode.OK);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable);
            }

        }
    }
}
