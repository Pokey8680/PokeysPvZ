.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;
.super Ljava/lang/Object;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->access$200(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V

    .line 98
    return-void
.end method