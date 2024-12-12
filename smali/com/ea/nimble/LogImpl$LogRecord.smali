.class Lcom/ea/nimble/LogImpl$LogRecord;
.super Ljava/lang/Object;
.source "LogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/LogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogRecord"
.end annotation


# instance fields
.field public level:I

.field public message:Ljava/lang/String;

.field final synthetic this$0:Lcom/ea/nimble/LogImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/LogImpl;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ea/nimble/LogImpl$LogRecord;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/LogImpl;
    .param p2, "x1"    # Lcom/ea/nimble/LogImpl$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/ea/nimble/LogImpl$LogRecord;-><init>(Lcom/ea/nimble/LogImpl;)V

    return-void
.end method
