using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Blog.Models
{
    public class Article
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public DateTime CreateDate { get; set; }
        public int CreatedByUserId { get; set; }
        public string Text { get; set; }

        public IEnumerable<CommentList> Comments { get; set; }
        public IEnumerable<Tag> Tags { get; set; }
    }

    public class ArticleList
    {
        public string Title { get; set; }
        public DateTime CreateDate { get; set; }
        public int CreatedByUserId { get; set; }
        public string Text { get; set; }

        public IEnumerable<CommentList> Comments { get; set; }
        public IEnumerable<Tag> Tags { get; set; }
    }

    public class ArticleDetails
    {
        
        public int Id { get; set; }

        [Display(Name = "Title")]
        public string Title { get; set; }

        [Display(Name = "Date time when created")]
        public DateTime CreateDate { get; set; }

        [Display(Name = "User who write")]
        public int CreatedByUserId { get; set; }

        [Display(Name = "Text")]
        public string Text { get; set; }

        public IEnumerable<CommentList> Comments { get; set; }
        public IEnumerable<Tag> Tags { get; set; }
    }

    public class ArticleEdit
    {
    }

    public class ArticleCreate
    {
    }
}