using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blog.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public IEnumerable<Article> Articles { get; set; }
        public IEnumerable<CommentList> Comments { get; set; }
    }
}