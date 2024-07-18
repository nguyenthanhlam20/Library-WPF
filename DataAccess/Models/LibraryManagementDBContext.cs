using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace DataAccess.Models
{
    public partial class LibraryManagementDBContext : DbContext
    {
        public LibraryManagementDBContext()
        {
        }

        public LibraryManagementDBContext(DbContextOptions<LibraryManagementDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Book> Books { get; set; } = null!;
        public virtual DbSet<Department> Departments { get; set; } = null!;
        public virtual DbSet<History> Histories { get; set; } = null!;
        public virtual DbSet<Student> Students { get; set; } = null!;

       protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
              if (!optionsBuilder.IsConfigured)
            {
                var builder = new ConfigurationBuilder()
                                 .SetBasePath(Directory.GetCurrentDirectory())
                                 .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
                IConfigurationRoot configuration = builder.Build();
                optionsBuilder.UseSqlServer(configuration.GetConnectionString("DB"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Book>(entity =>
            {
                entity.ToTable("Book");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.Author)
                    .HasMaxLength(200)
                    .HasColumnName("author");

                entity.Property(e => e.Description).HasColumnName("description");

                entity.Property(e => e.Title)
                    .HasMaxLength(200)
                    .HasColumnName("title");
            });

            modelBuilder.Entity<Department>(entity =>
            {
                entity.HasKey(e => e.Code)
                    .HasName("PK__Departme__A25C5AA64E24D834");

                entity.HasIndex(e => e.Name, "UQ__Departme__737584F6ED5DCD47")
                    .IsUnique();

                entity.Property(e => e.Code)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(100);
            });

            modelBuilder.Entity<History>(entity =>
            {
                entity.HasKey(e => new { e.BookId, e.StudentId })
                    .HasName("PK__History__FBAE2A88C7B421A4");

                entity.ToTable("History");

                entity.Property(e => e.BookId).HasColumnName("book_id");

                entity.Property(e => e.StudentId).HasColumnName("student_id");

                entity.Property(e => e.EndDate)
                    .HasColumnType("date")
                    .HasColumnName("end_date");

                entity.Property(e => e.StartDate)
                    .HasColumnType("date")
                    .HasColumnName("start_date");

                entity.Property(e => e.Status).HasColumnName("status");

                entity.HasOne(d => d.Book)
                    .WithMany(p => p.Histories)
                    .HasForeignKey(d => d.BookId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__History__book_id__3E52440B");

                entity.HasOne(d => d.Student)
                    .WithMany(p => p.Histories)
                    .HasForeignKey(d => d.StudentId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__History__student__3F466844");
            });

            modelBuilder.Entity<Student>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.Address)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("address");

                entity.Property(e => e.Birthdate)
                    .HasColumnType("date")
                    .HasColumnName("birthdate");

                entity.Property(e => e.City)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("city");

                entity.Property(e => e.Country)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("country");

                entity.Property(e => e.Department)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("department");

                entity.Property(e => e.Gender)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("gender");

                entity.Property(e => e.Name)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.HasOne(d => d.DepartmentNavigation)
                    .WithMany(p => p.Students)
                    .HasForeignKey(d => d.Department)
                    .HasConstraintName("FK__Students__depart__403A8C7D");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
