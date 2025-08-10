.class final Lcom/google/android/gms/internal/zzckf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzitz:J

.field private synthetic zzjgk:Lcom/google/android/gms/internal/zzckc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckc;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckf;->zzjgk:Lcom/google/android/gms/internal/zzckc;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzckf;->zzitz:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckf;->zzjgk:Lcom/google/android/gms/internal/zzckc;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzckf;->zzitz:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzckc;->zza(Lcom/google/android/gms/internal/zzckc;J)V

    return-void
.end method
