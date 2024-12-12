.class public final Lcom/millennialmedia/android/MMSDK;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMSDK$Event;
    }
.end annotation


# static fields
.field private static final BASE_URL_TRACK_EVENT:Ljava/lang/String; = "http://ads.mp.mydas.mobi/pixel?id="

.field static final CACHE_REQUEST_TIMEOUT:I = 0x7530

.field static final CLOSE_ACTIVITY_DURATION:I = 0x190

.field static COMMA:Ljava/lang/String; = null

.field public static final DEFAULT_APID:Ljava/lang/String; = "28911"

.field public static final DEFAULT_BANNER_APID:Ljava/lang/String; = "28913"

.field public static final DEFAULT_RECT_APID:Ljava/lang/String; = "28914"

.field static final EMPTY:Ljava/lang/String; = ""

.field static final HANDSHAKE_REQUEST_TIMEOUT:I = 0xbb8

.field static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss ZZZZ"

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x0

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_INTERNAL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_LEVEL_PRIVATE_VERBOSE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_LEVEL_VERBOSE:I = 0x3

.field static final OPEN_ACTIVITY_DURATION:I = 0x258

.field static final PREFS_NAME:Ljava/lang/String; = "MillennialMediaSettings"

.field static final REQUEST_TIMEOUT:I = 0x2710

.field public static final SDKLOG:Ljava/lang/String; = "MMSDK"

.field public static final VERSION:Ljava/lang/String; = "5.3.0-c3980670.a"

.field static disableAdMinRefresh:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static getMMdidValue:Ljava/lang/String;

.field private static hasSpeechKit:Z

.field private static isBroadcastingEvents:Z

.field static logLevel:I

.field static macId:Ljava/lang/String;

.field static mainHandler:Landroid/os/Handler;

.field private static nextDefaultId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    sput-boolean v2, Lcom/millennialmedia/android/MMSDK;->disableAdMinRefresh:Z

    .line 119
    const v0, 0x711e41a1

    sput v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    .line 153
    const-string v0, ","

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    .line 682
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;

    .line 1120
    sput-boolean v2, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z

    .line 1123
    :try_start_0
    const-string v0, "nmsp_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    return v0
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 727
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 728
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static checkActivity(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 790
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.millennialmedia.android.MMActivity"

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 792
    .local v0, "cn":Landroid/content/ComponentName;
    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MMSDK"

    const-string v4, "Activity MMActivity not declared in AndroidManifest.xml"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 797
    const-string v3, "MMActivity class"

    invoke-static {p0, v3}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 748
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 749
    const-string v0, "INTERNET permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 753
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 755
    const-string v0, "ACCESS_NETWORK_STATE permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 758
    :cond_1
    return-void
.end method

.method private static createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 763
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 764
    .local v0, "dialog":Landroid/app/AlertDialog;
    const-string v1, "Whoops!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    const-string v1, "The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 770
    const/4 v1, -0x3

    const-string v2, "OK"

    new-instance v3, Lcom/millennialmedia/android/MMSDK$1;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMSDK$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 779
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 780
    return-object v0
.end method

.method static getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;
    .locals 1
    .param p0, "adInfo"    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .prologue
    .line 1023
    if-nez p0, :cond_0

    .line 1024
    const/4 v0, 0x0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getAdvertisingInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1032
    const/4 v0, 0x0

    .line 1034
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1050
    :goto_0
    return-object v0

    .line 1035
    :catch_0
    move-exception v1

    .line 1036
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MMSDK"

    const-string v3, "Unrecoverable error connecting to Google Play services (e.g.,the old version of the service doesnt support getting AdvertisingId"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1039
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1040
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const-string v2, "MMSDK"

    const-string v3, "Google Play services is not available entirely."

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1042
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MMSDK"

    const-string v3, "IllegalStateException: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1044
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 1045
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    const-string v2, "MMSDK"

    const-string v3, "Google Play Services is not installed, up-to-date, or enabled"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getBroadcastEvents()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    return v0
.end method

.method static getCn(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 852
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 854
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 610
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 612
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 613
    const-string v0, "unknown"

    .line 679
    :goto_0
    return-object v0

    .line 616
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 618
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 619
    .local v3, "type":I
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 620
    .local v2, "subType":I
    if-ne v3, v5, :cond_1

    .line 621
    const-string v0, "wifi"

    .local v0, "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 622
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 623
    packed-switch v2, :pswitch_data_0

    .line 670
    const-string v0, "unknown"

    .line 671
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 625
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "1xrtt"

    .line 626
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 628
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "cdma"

    .line 629
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 631
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "edge"

    .line 632
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 634
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "ehrpd"

    .line 635
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "evdo_0"

    .line 638
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 640
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "evdo_a"

    .line 641
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 643
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "evdo_b"

    .line 644
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 646
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "gprs"

    .line 647
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 649
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "hsdpa"

    .line 650
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 652
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "hspa"

    .line 653
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 655
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "hspap"

    .line 656
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 658
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "hsupa"

    .line 659
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 661
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "iden"

    .line 662
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 664
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "lte"

    .line 665
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 667
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "umts"

    .line 668
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 677
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v2    # "subType":I
    .end local v3    # "type":I
    :cond_3
    const-string v0, "offline"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getDefaultAdId()I
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v1

    .line 124
    :try_start_0
    sget v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    monitor-exit v1

    return v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static getDensityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 738
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDpiHeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1061
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1062
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getDpiWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1056
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v7, "ips":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 567
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 568
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 569
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 570
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 571
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 572
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 573
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 574
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "inetAddressHost":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    .line 582
    .local v8, "isIPv4":Z
    if-eqz v8, :cond_3

    .line 583
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "inetAddressHost":Ljava/lang/String;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "ips":Ljava/lang/StringBuilder;
    .end local v8    # "isIPv4":Z
    :catch_0
    move-exception v3

    .line 599
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "MMSDK"

    const-string v11, "Exception getting ip information: "

    invoke-static {v10, v11, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    const-string v10, ""

    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v10

    .line 585
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v4    # "inetAddress":Ljava/net/InetAddress;
    .restart local v5    # "inetAddressHost":Ljava/lang/String;
    .restart local v6    # "intf":Ljava/net/NetworkInterface;
    .restart local v7    # "ips":Ljava/lang/StringBuilder;
    .restart local v8    # "isIPv4":Z
    :cond_3
    const/16 v10, 0x25

    :try_start_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 589
    .local v0, "delim":I
    if-gez v0, :cond_4

    move-object v9, v5

    .line 591
    .local v9, "noInterfaceNameAddress":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 589
    .end local v9    # "noInterfaceNameAddress":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 597
    .end local v0    # "delim":I
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "inetAddressHost":Ljava/lang/String;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v8    # "isIPv4":Z
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/millennialmedia/android/MMLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static declared-synchronized getMMdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 691
    const-class v6, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 692
    sget-object v5, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 695
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "mmdid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "mmh_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    .local v4, "mmdidBuilder":Ljava/lang/StringBuilder;
    :try_start_2
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 705
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 706
    .local v1, "hashBytes":[B
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 710
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 711
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 691
    .end local v1    # "hashBytes":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "mmdid":Ljava/lang/String;
    .end local v4    # "mmdidBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 712
    .restart local v3    # "mmdid":Ljava/lang/String;
    .restart local v4    # "mmdidBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "MMSDK"

    const-string v8, "Exception calculating hash: "

    invoke-static {v7, v8, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 815
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v2, :cond_0

    .line 816
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 817
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 818
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 821
    :goto_0
    return-object v2

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getMediaVolume(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1161
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    return v1
.end method

.method static getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 827
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 829
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v2, :cond_0

    .line 830
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 831
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 832
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_0
    return-object v2

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 845
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 847
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 1278
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1272
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 1274
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 1276
    :pswitch_2
    const-string v0, "square"

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static final getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    goto :goto_0
.end method

.method static getSupportsCalendar()Z
    .locals 2

    .prologue
    .line 1258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSupportsSms(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1252
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getSupportsTel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1264
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static hasMicrophone(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static hasRecordAudioPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1153
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasSetTranslationMethod()Z
    .locals 2

    .prologue
    .line 1295
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasSpeechKit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1131
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "true"

    .line 1134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1140
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 1141
    .local v0, "handShake":Lcom/millennialmedia/android/HandShake;
    invoke-virtual {v0}, Lcom/millennialmedia/android/HandShake;->sendInitRequest()V

    .line 1142
    invoke-virtual {v0}, Lcom/millennialmedia/android/HandShake;->startSession()V

    .line 1143
    return-void
.end method

.method static insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "MMSDK"

    const-string v27, "executing getIDThread"

    invoke-static/range {v26 .. v27}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v26, "density"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDensityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v26, "hpx"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v26, "wpx"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v26, "sk"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v26, "mic"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->hasMicrophone(Landroid/content/Context;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v4, 0x0

    .line 888
    .local v4, "aaidValue":Ljava/lang/String;
    const-string v6, "true"

    .line 890
    .local v6, "ateValue":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v26

    if-nez v26, :cond_0

    .line 891
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getAdvertisingInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v13

    .line 893
    .local v13, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    if-eqz v13, :cond_0

    .line 894
    invoke-static {v13}, Lcom/millennialmedia/android/MMSDK;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v4

    .line 896
    if-eqz v4, :cond_0

    invoke-virtual {v13}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 897
    const-string v6, "false"

    .line 902
    .end local v13    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_0
    if-eqz v4, :cond_e

    .line 903
    const-string v26, "aaid"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string v26, "ate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->isCachedVideoSupportedOnDevice(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 916
    const-string v26, "cachedvideo"

    const-string v27, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    :goto_1
    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v26, :cond_2

    .line 922
    const-string v26, "dm"

    sget-object v27, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_2
    sget-object v26, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v26, :cond_3

    .line 925
    const-string v26, "dv"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Android"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :cond_3
    const-string v26, "sdkversion"

    const-string v27, "5.3.0-c3980670.a"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v26, "mcc"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v26, "mnc"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getCn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 933
    .local v7, "cn":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 934
    const-string v26, "cn"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 938
    .local v17, "locale":Ljava/util/Locale;
    if-eqz v17, :cond_5

    .line 939
    const-string v26, "language"

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v26, "country"

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 945
    .local v19, "pkid":Ljava/lang/String;
    const-string v26, "pkid"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 947
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 948
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v26, "pknm"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pkid":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HandShake;->getSchemesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 955
    .local v23, "schemes":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 956
    const-string v26, "appsids"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 960
    .local v25, "vid":Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 961
    const-string v26, "vid"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_7
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 971
    .local v8, "connectionType":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 972
    new-instance v24, Landroid/os/StatFs;

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 977
    .local v24, "stat":Landroid/os/StatFs;
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 981
    .local v12, "freeSpace":Ljava/lang/String;
    const/4 v10, 0x0

    .line 982
    .local v10, "devicePluggedIn":Ljava/lang/String;
    const/4 v9, 0x0

    .line 983
    .local v9, "deviceBatteryLevel":Ljava/lang/String;
    const/16 v26, 0x0

    new-instance v27, Landroid/content/IntentFilter;

    const-string v28, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v27 .. v28}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v14

    .line 985
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_8

    .line 988
    const-string v26, "plugged"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    if-nez v26, :cond_11

    const-string v10, "false"

    .line 990
    :goto_4
    const-string v26, "scale"

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 991
    .local v22, "scale":I
    const/high16 v26, 0x42c80000    # 100.0f

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v21, v26, v27

    .line 992
    .local v21, "ratio":F
    const-string v26, "level"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 993
    .local v16, "level":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 996
    .end local v16    # "level":I
    .end local v21    # "ratio":F
    .end local v22    # "scale":I
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_9

    .line 998
    const-string v26, "bl"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_a

    .line 1001
    const-string v26, "plugged"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    :cond_a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_b

    .line 1004
    const-string v26, "space"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :cond_b
    if-eqz v8, :cond_c

    .line 1007
    const-string v26, "conn"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "UTF-8"

    invoke-static/range {v26 .. v27}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1010
    .local v15, "ip":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 1011
    const-string v26, "pip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    .end local v8    # "connectionType":Ljava/lang/String;
    .end local v9    # "deviceBatteryLevel":Ljava/lang/String;
    .end local v10    # "devicePluggedIn":Ljava/lang/String;
    .end local v12    # "freeSpace":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "ip":Ljava/lang/String;
    .end local v24    # "stat":Landroid/os/StatFs;
    :cond_d
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/millennialmedia/android/MMRequest;->insertLocation(Ljava/util/Map;)V

    .line 1019
    return-void

    .line 907
    .end local v7    # "cn":Ljava/lang/String;
    .end local v17    # "locale":Ljava/util/Locale;
    .end local v23    # "schemes":Ljava/lang/String;
    .end local v25    # "vid":Ljava/lang/String;
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 909
    .local v18, "mmdid":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 910
    const-string v26, "mmdid"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 918
    .end local v18    # "mmdid":Ljava/lang/String;
    :cond_f
    const-string v26, "cachedvideo"

    const-string v27, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 949
    .restart local v7    # "cn":Ljava/lang/String;
    .restart local v17    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v11

    .line 950
    .local v11, "e":Ljava/lang/Exception;
    const-string v26, "MMSDK"

    const-string v27, "Can\'t insert package information"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 975
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "connectionType":Ljava/lang/String;
    .restart local v23    # "schemes":Ljava/lang/String;
    .restart local v25    # "vid":Ljava/lang/String;
    :cond_10
    :try_start_2
    new-instance v24, Landroid/os/StatFs;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .restart local v24    # "stat":Landroid/os/StatFs;
    goto/16 :goto_3

    .line 988
    .restart local v9    # "deviceBatteryLevel":Ljava/lang/String;
    .restart local v10    # "devicePluggedIn":Ljava/lang/String;
    .restart local v12    # "freeSpace":Ljava/lang/String;
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_11
    const-string v10, "true"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1013
    .end local v8    # "connectionType":Ljava/lang/String;
    .end local v9    # "deviceBatteryLevel":Ljava/lang/String;
    .end local v10    # "devicePluggedIn":Ljava/lang/String;
    .end local v12    # "freeSpace":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v24    # "stat":Landroid/os/StatFs;
    :catch_1
    move-exception v11

    .line 1014
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v26, "MMSDK"

    const-string v27, "Exception inserting common parameters: "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static isCachedVideoSupportedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 553
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 555
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 558
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static isUiThread()Z
    .locals 2

    .prologue
    .line 547
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static printDiagnostics(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 9
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1166
    if-nez p0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1172
    .local v0, "context":Landroid/content/Context;
    const-string v1, "MMSDK"

    const-string v2, "MMAd External ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "MMSDK"

    const-string v2, "MMAd Internal ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v1, "MMSDK"

    const-string v2, "APID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v2, "MMSDK"

    const-string v3, "SD card is %savailable."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    if-eqz v0, :cond_0

    .line 1181
    const-string v1, "MMSDK"

    const-string v2, "Package: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v1, "MMSDK"

    const-string v2, "MMDID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v1, "MMSDK"

    const-string v2, "Permissions:"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_3

    const-string v1, "not "

    :goto_2
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v2, "MMSDK"

    const-string v3, "android.permission.INTERNET is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_4

    const-string v1, "not "

    :goto_3
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v2, "MMSDK"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_5

    const-string v1, "not "

    :goto_4
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v2, "MMSDK"

    const-string v3, "android.permission.VIBRATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_6

    const-string v1, "not "

    :goto_5
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_7

    const-string v1, "not "

    :goto_6
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_8

    const-string v1, "not "

    :goto_7
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v1, "MMSDK"

    const-string v2, "Cached Ads:"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const/4 v1, 0x2

    new-instance v2, Lcom/millennialmedia/android/MMSDK$2;

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/MMSDK$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    goto/16 :goto_0

    .line 1176
    :cond_2
    const-string v1, "not "

    goto/16 :goto_1

    .line 1186
    :cond_3
    const-string v1, ""

    goto/16 :goto_2

    .line 1192
    :cond_4
    const-string v1, ""

    goto/16 :goto_3

    .line 1198
    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 1204
    :cond_6
    const-string v1, ""

    goto :goto_5

    .line 1210
    :cond_7
    const-string v1, ""

    goto :goto_6

    .line 1216
    :cond_8
    const-string v1, ""

    goto :goto_7
.end method

.method static removeAccelForJira1164()Z
    .locals 2

    .prologue
    .line 1290
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetCache(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->resetCache(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 533
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "action"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 542
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    return-void
.end method

.method public static setBroadcastEvents(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 174
    sput-boolean p0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    .line 175
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x4

    .line 190
    packed-switch p0, :pswitch_data_0

    .line 204
    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    .line 207
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 198
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static declared-synchronized setMMdid(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 721
    const-class v0, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit v0

    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static supportsFullScreenInline()Z
    .locals 2

    .prologue
    .line 1300
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackConversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V

    .line 1100
    return-void
.end method

.method public static trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 1117
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V

    .line 1118
    return-void
.end method

.method public static trackEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "mmdid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://ads.mp.mydas.mobi/pixel?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mmdid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "trackEventUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/android/Utils$HttpUtils;->executeUrl(Ljava/lang/String;)V

    .line 1085
    .end local v0    # "mmdid":Ljava/lang/String;
    .end local v1    # "trackEventUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
