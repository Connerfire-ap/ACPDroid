.class final Lcom/google/firebase/iid/zzx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zznuu:Lcom/google/firebase/iid/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzx;->zznuu:Lcom/google/firebase/iid/zzw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzx;->zznuu:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzw;->zzc(Landroid/os/Message;)V

    return-void
.end method
