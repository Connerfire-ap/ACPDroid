.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/internal/zzchc;


# instance fields
.field private zzitu:Lcom/google/android/gms/internal/zzcha;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzitu:Lcom/google/android/gms/internal/zzcha;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzchc;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzitu:Lcom/google/android/gms/internal/zzcha;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzitu:Lcom/google/android/gms/internal/zzcha;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcha;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
