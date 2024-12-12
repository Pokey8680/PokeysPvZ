.class Lcom/ea/blast/LocationManagerAndroid$1;
.super Ljava/lang/Object;
.source "LocationManagerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/LocationManagerAndroid;


# direct methods
.method constructor <init>(Lcom/ea/blast/LocationManagerAndroid;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v0}, Lcom/ea/blast/LocationManagerAndroid;->access$100(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v1}, Lcom/ea/blast/LocationManagerAndroid;->access$000(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 182
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v0}, Lcom/ea/blast/LocationManagerAndroid;->access$100(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v1}, Lcom/ea/blast/LocationManagerAndroid;->access$200(Lcom/ea/blast/LocationManagerAndroid;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v2}, Lcom/ea/blast/LocationManagerAndroid;->access$300(Lcom/ea/blast/LocationManagerAndroid;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v4}, Lcom/ea/blast/LocationManagerAndroid;->access$400(Lcom/ea/blast/LocationManagerAndroid;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ea/blast/LocationManagerAndroid$1;->this$0:Lcom/ea/blast/LocationManagerAndroid;

    invoke-static {v5}, Lcom/ea/blast/LocationManagerAndroid;->access$000(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 183
    return-void
.end method
