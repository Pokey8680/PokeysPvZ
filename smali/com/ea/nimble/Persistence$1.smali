.class Lcom/ea/nimble/Persistence$1;
.super Ljava/lang/Object;
.source "Persistence.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/Persistence;


# direct methods
.method constructor <init>(Lcom/ea/nimble/Persistence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/Persistence;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ea/nimble/Persistence$1;->this$0:Lcom/ea/nimble/Persistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ea/nimble/Persistence$1;->this$0:Lcom/ea/nimble/Persistence;

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 50
    return-void
.end method
