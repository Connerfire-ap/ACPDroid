.class final Lcom/google/android/gms/internal/zzcix;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcix;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcix;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjd;->resetAnalyticsData()V

    return-void
.end method
