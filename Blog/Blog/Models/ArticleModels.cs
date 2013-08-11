using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blog.Models
{
    public class Article
    {
        public Article()
        {
            this.Comments = new HashSet<Comment>();
            this.Tags = new HashSet<Tag>();
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public DateTime CreateDate { get; set; }
        public int CreatedByUserId { get; set; }
        public string Text { get; set; }

        public virtual  User User { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Tag> Tags { get; set; }
    }
}