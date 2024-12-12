.class Lcom/ea/nimble/LogImpl$GuardTask;
.super Ljava/lang/Object;
.source "LogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/LogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuardTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/LogImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/LogImpl;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/LogImpl;
    .param p2, "x1"    # Lcom/ea/nimble/LogImpl$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ea/nimble/LogImpl$GuardTask;-><init>(Lcom/ea/nimble/LogImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v2}, Lcom/ea/nimble/LogImpl;->access$100(Lcom/ea/nimble/LogImpl;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$200(Lcom/ea/nimble/LogImpl;)V

    .line 45
    :cond_0
    return-void
.end method
