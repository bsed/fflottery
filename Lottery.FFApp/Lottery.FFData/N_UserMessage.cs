//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Lottery.FFData
{
    using System;
    using System.Collections.Generic;
    
    public partial class N_UserMessage
    {
        public int Id { get; set; }
        public Nullable<int> UserId { get; set; }
        public string Title { get; set; }
        public string Msg { get; set; }
        public Nullable<int> Second { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<int> IsRead { get; set; }
        public Nullable<int> IsSys { get; set; }
        public Nullable<System.DateTime> STime { get; set; }
    }
}