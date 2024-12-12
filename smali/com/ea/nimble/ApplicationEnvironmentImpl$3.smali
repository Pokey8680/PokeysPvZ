.class Lcom/ea/nimble/ApplicationEnvironmentImpl$3;
.super Ljava/lang/Object;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveGoogleAdvertiserId()V
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
    .line 706
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 710
    const-string v2, "APP_ENV: Running thread to get Google Advertising ID"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 714
    const/4 v0, 0x0

    .line 717
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 720
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 723
    :cond_0
    if-eqz v0, :cond_1

    .line 725
    const-string v2, "APP_ENV: Setting values for Google Advertising ID and isLimitAdTrackingEnabled flag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$002(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 766
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    .line 767
    return-void

    .line 731
    .restart local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_1
    :try_start_1
    const-string v2, "APP_ENV: Cannot get Google Advertising ID - AdvertisingIdInfo is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 734
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "APP_ENV: Cannot get Google Advertising ID - Unrecoverable error connecting to Google Play Services"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 740
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 743
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    const-string v2, "APP_ENV: Cannot get Google Advertising ID - Recoverable error connecting to Google Play Services"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 745
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :catch_2
    move-exception v1

    .line 750
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const-string v2, "APP_ENV: Cannot get Google Advertising ID - Google Play Services not available on this device"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 752
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_3
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_ENV: Cannot get Google Advertising ID - Illegal State Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 756
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v1

    .line 758
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_ENV: Cannot get Google Advertising ID - General Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 763
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "APP_ENV: Cannot get Google Advertising ID because there is no current activity"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
