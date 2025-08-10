.class final Lcom/google/android/gms/internal/zzckj;
.super Lcom/google/android/gms/internal/zzcfp;


# instance fields
.field private synthetic zzjgm:Lcom/google/android/gms/internal/zzcki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcki;Lcom/google/android/gms/internal/zzchj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckj;->zzjgm:Lcom/google/android/gms/internal/zzcki;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcfp;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjgm:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcki;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjgm:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckj;->zzjgm:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckj;->zzjgm:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
