.class public final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# instance fields
.field private zzlwz:Ljava/lang/String;

.field private zzlxa:Ljava/lang/String;

.field private zzlxb:Ljava/lang/String;

.field private zzlxc:Ljava/lang/String;

.field private zzlxd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlwz:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxa:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxb:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxc:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbpb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlwz:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbpc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxa:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbpd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbpe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbpf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzlxd:Ljava/lang/String;

    return-object v0
.end method
