﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ledger.Models
{
    public class Transaction
    {
        public Guid ProductID { get; set; }
        public Guid UserID { get; set; }
        public double PriceAtPointInTime { get; set; }
        public DateTime OccuredAt { get; set; }
        public double Quantity { get; set; }
        public double Total { get; set; }
    }
}