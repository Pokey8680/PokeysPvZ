.class Lcom/google/android/gms/internal/zzos$4;
.super Lcom/google/android/gms/internal/zznr$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzos;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzos$zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarG:Lcom/google/android/gms/internal/zzos;

.field final synthetic zzarL:Lcom/google/android/gms/internal/zzos$zza;

.field final synthetic zzarM:Lcom/google/android/gms/fitness/data/zzj;

.field final synthetic zzarN:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzos;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzos$zza;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzos$4;->zzarG:Lcom/google/android/gms/internal/zzos;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzos$4;->zzarL:Lcom/google/android/gms/internal/zzos$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzos$4;->zzarM:Lcom/google/android/gms/fitness/data/zzj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzos$4;->zzarN:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznr$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zznr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$4;->zza(Lcom/google/android/gms/internal/zznr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzos$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzos$4;->zzarL:Lcom/google/android/gms/internal/zzos$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzos$zzc;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzos$zza;Lcom/google/android/gms/internal/zzos$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznr;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoc;

    new-instance v2, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzos$4;->zzarM:Lcom/google/android/gms/fitness/data/zzj;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzos$4;->zzarN:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzoc;->zza(Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$4;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method