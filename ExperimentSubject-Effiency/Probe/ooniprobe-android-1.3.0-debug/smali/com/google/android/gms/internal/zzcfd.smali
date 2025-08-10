.class final Lcom/google/android/gms/internal/zzcfd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzitz:J

.field private synthetic zziua:Lcom/google/android/gms/internal/zzcfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfa;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfd;->zziua:Lcom/google/android/gms/internal/zzcfa;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcfd;->zzitz:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfd;->zziua:Lcom/google/android/gms/internal/zzcfa;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfd;->zzitz:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfa;->zza(Lcom/google/android/gms/internal/zzcfa;J)V

    return-void
.end method
