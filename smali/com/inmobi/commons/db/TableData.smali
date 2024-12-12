.class public Lcom/inmobi/commons/db/TableData;
.super Ljava/lang/Object;
.source "TableData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmColumns()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/inmobi/commons/db/TableData;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getmTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/inmobi/commons/db/TableData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setmColumns(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lcom/inmobi/commons/db/TableData;->b:Ljava/util/LinkedHashMap;

    .line 21
    return-void
.end method

.method public setmTableName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/inmobi/commons/db/TableData;->a:Ljava/lang/String;

    .line 15
    return-void
.end method
