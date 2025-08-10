.class public final Lcom/google/android/gms/internal/zzcjr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field final synthetic zzjfo:Lcom/google/android/gms/internal/zzcjd;

.field private volatile zzjfv:Z

.field private volatile zzjfw:Lcom/google/android/gms/internal/zzcgi;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzcjd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcjr;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    return p1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzfz(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->zzakb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcgb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcju;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcju;-><init>(Lcom/google/android/gms/internal/zzcjr;Lcom/google/android/gms/internal/zzcgb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzfz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjd;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazl()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzcjw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjw;-><init>(Lcom/google/android/gms/internal/zzcjr;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzfz(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzcjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjv;-><init>(Lcom/google/android/gms/internal/zzcjr;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzfz(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzcgb;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/internal/zzcgb;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzcgd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzcgd;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :goto_3
    if-nez v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzalq()Lcom/google/android/gms/common/stats/zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/internal/zzcjd;)Lcom/google/android/gms/internal/zzcjr;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzcjs;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/zzcjs;-><init>(Lcom/google/android/gms/internal/zzcjr;Lcom/google/android/gms/internal/zzcgb;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzfz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcjt;-><init>(Lcom/google/android/gms/internal/zzcjr;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbai()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcgi;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/internal/zzcgi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfw:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->zzajx()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzn(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzalq()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfv:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/internal/zzcjd;)Lcom/google/android/gms/internal/zzcjr;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
