.class public final Lcom/github/salomonbrys/kodein/GSetKt;
.super Ljava/lang/Object;
.source "GSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\n\u0008\u0001\u0010\u0003\u0018\u0001*\u00020\u0004*\u00020\u0005H\u0087\u0008\u001a1\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u00080\u0007\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u0004*\u0008\u0012\u0004\u0012\u0002H\u00030\tH\u0086\u0008\u001a\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u000b\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u0004*\u00020\u0005H\u0087\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "argSetBinding",
        "Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding;",
        "A",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "inSet",
        "Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "setBinding",
        "Lcom/github/salomonbrys/kodein/bindings/SetBinding;",
        "kodein_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private static final argSetBinding(Lcom/github/salomonbrys/kodein/Kodein$Builder;)Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding;
    .locals 4
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            ")",
            "Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v3, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding;

    .line 43
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 44
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$2;

    invoke-direct {v1}, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 45
    new-instance v2, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$3;

    invoke-direct {v2}, Lcom/github/salomonbrys/kodein/GSetKt$argSetBinding$$inlined$generic$3;-><init>()V

    check-cast v2, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 30
    invoke-direct {v3, v0, v1, v2}, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v3
.end method

.method private static final inSet(Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;)Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder",
            "<TT;>;)",
            "Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet",
            "<TT;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 39
    .line 46
    new-instance v0, Lcom/github/salomonbrys/kodein/GSetKt$inSet$$inlined$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GSetKt$inSet$$inlined$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 39
    invoke-static {p0, v0}, Lcom/github/salomonbrys/kodein/bindings/SetKt;->InSet(Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;Lcom/github/salomonbrys/kodein/TypeToken;)Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;

    move-result-object v0

    return-object v0
.end method

.method private static final setBinding(Lcom/github/salomonbrys/kodein/Kodein$Builder;)Lcom/github/salomonbrys/kodein/bindings/SetBinding;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            ")",
            "Lcom/github/salomonbrys/kodein/bindings/SetBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v2, Lcom/github/salomonbrys/kodein/bindings/SetBinding;

    .line 41
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/GSetKt$setBinding$$inlined$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GSetKt$setBinding$$inlined$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 42
    new-instance v1, Lcom/github/salomonbrys/kodein/GSetKt$setBinding$$inlined$generic$2;

    invoke-direct {v1}, Lcom/github/salomonbrys/kodein/GSetKt$setBinding$$inlined$generic$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 18
    invoke-direct {v2, v0, v1}, Lcom/github/salomonbrys/kodein/bindings/SetBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v2
.end method
