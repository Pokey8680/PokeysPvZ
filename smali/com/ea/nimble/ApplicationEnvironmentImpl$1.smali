.class Lcom/ea/nimble/ApplicationEnvironmentImpl$1;
.super Ljava/lang/Object;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->refreshAgeCompliance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/ApplicationEnvironmentImpl;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;

    .prologue
    .line 579
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const-string v1, "geoip.url"

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Lcom/ea/nimble/SynergyRequest;->send()V

    .line 581
    return-void
.end method
