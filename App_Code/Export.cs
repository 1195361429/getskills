/*using System;
using System.Data;
using System.IO;
using System.Reflection;
using Microsoft.Office.Interop.Word;


public class Export
{

    public void ExportToWord(DataSet ds, string path) //这里path是保存路径而已
    {
        object paths = (object)path;
        if (ds.Tables.Count != 0)
        {
            object tableBehavior = Microsoft.Office.Interop.Word.WdDefaultTableBehavior.wdWord9TableBehavior;
            object autoFitBehavior = Microsoft.Office.Interop.Word.WdAutoFitBehavior.wdAutoFitFixed;
            object unit = Microsoft.Office.Interop.Word.WdUnits.wdStory;
            object extend = System.Reflection.Missing.Value;
            object breakType = (int)Microsoft.Office.Interop.Word.WdBreakType.wdSectionBreakNextPage;
            object count = 1;
            object character = Microsoft.Office.Interop.Word.WdUnits.wdCharacter;
            object noThing = System.Reflection.Missing.Value;

            try
            {
                Microsoft.Office.Interop.Word.Application word = new Microsoft.Office.Interop.Word.ApplicationClass();
                Microsoft.Office.Interop.Word._Document doc = new Microsoft.Office.Interop.Word.DocumentClass();
                doc = word.Documents.Add(ref noThing, ref noThing, ref noThing, ref noThing);
                doc.Activate();

                for (int totalTable = 0; totalTable < ds.Tables.Count; totalTable++)
                {
                    word.Application.Selection.TypeText(ds.Tables[totalTable].TableName + "表的数据如下:");
                    word.Application.Selection.TypeParagraph();
                    Microsoft.Office.Interop.Word.Range para = word.Application.Selection.Range;
                    doc.Tables.Add(para, ds.Tables[totalTable].Rows.Count + 1, ds.Tables[totalTable].Columns.Count, ref tableBehavior, ref autoFitBehavior);
                    for (int column = 0; column < ds.Tables[totalTable].Columns.Count; column++)
                    {
                        doc.Tables[totalTable + 1].Cell(1, column + 1).Range.InsertBefore(ds.Tables[0].Columns[column].ColumnName.Trim());
                    }
                    for (int row = 0; row < ds.Tables[totalTable].Rows.Count; row++)
                    {
                        for (int column = 0; column < ds.Tables[totalTable].Columns.Count; column++)
                        {
                            doc.Tables[totalTable + 1].Cell(row + 2, column + 1).Range.InsertBefore(ds.Tables[totalTable].Rows[row][column].ToString().Trim());
                        }
                    }
                    word.Application.Selection.EndKey(ref unit, ref extend);
                    word.Application.Selection.TypeParagraph();
                    word.Application.Selection.InsertBreak(ref breakType);

                }
                word.Application.Selection.TypeBackspace();
                word.Application.Selection.Delete(ref character, ref count);
                word.Application.Selection.HomeKey(ref unit, ref extend);

                try
                {
                    doc.SaveAs(ref paths, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing, ref noThing);
                    word.Visible = true;
                }
                catch
                {
                    System.Windows.Forms.MessageBox.Show("系统找不到指定目录下的文件");
                    return;
                }
                word.Visible = true;
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("向word文件中写入数据出错: " + ex.Message.ToString());
            }
        }
        else
            System.Windows.Forms.MessageBox.Show("No Data");
    }
}  
*/