using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blog.Models
{
    public class CommentList
    {
        public int Id { get; set; }
        public int ArticleId { get; set; }
        public DateTime CreateDate { get; set; }
        public int CreatedByUserId { get; set; }
        public string Text { get; set; }

        public Article Article { get; set; }
        public User User { get; set; }
    }
}