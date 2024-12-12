.class Lcom/ea/blast/MessageBoxDelegate$1;
.super Ljava/lang/Object;
.source "MessageBoxDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/MessageBoxDelegate;->JavaMessageBox(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/MessageBoxDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/MessageBoxDelegate;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ea/blast/MessageBoxDelegate$1;->this$0:Lcom/ea/blast/MessageBoxDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ea/blast/MessageBoxDelegate$1;->this$0:Lcom/ea/blast/MessageBoxDelegate;

    invoke-static {v0}, Lcom/ea/blast/MessageBoxDelegate;->access$000(Lcom/ea/blast/MessageBoxDelegate;)V

    .line 90
    return-void
.end method
