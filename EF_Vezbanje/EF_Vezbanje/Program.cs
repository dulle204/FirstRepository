using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EF_Vezbanje
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new Model1Container())
            {
                Console.Write("id: ");
                Int32 id = int.Parse(Console.ReadLine());

                Console.Write("Ime: ");
                var ime = Console.ReadLine();

                Console.Write("Prezime: ");
                var prezime = Console.ReadLine();

                var ent1 = new Entity1() { Id = id, Ime = ime, Prezime = prezime };
                db.Entity1.Add(ent1);
                db.SaveChanges();

                var query = from b in db.Entity1
                            orderby b.Id
                            select b;
                Console.WriteLine("ID Ime  Prezime" + Environment.NewLine + "---------------");
                foreach (var item in query)
                {
                    Console.WriteLine(item.Id + "  " + item.Ime + " " + item.Prezime);//zasto ne prikazuje dobar id
                }
            }
            Console.ReadKey();
        }
    }
}
