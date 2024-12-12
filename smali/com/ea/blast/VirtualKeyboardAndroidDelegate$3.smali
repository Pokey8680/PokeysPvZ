.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->access$300(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)V

    .line 300
    :cond_0
    return-void
.end method
