.class public final Lcom/github/salomonbrys/kodein/bindings/SetKt;
.super Ljava/lang/Object;
.source "set.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a@\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00030\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0004*\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00030\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "InSet",
        "Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;",
        "T",
        "",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "setTypeToken",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "kodein-core_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static final InSet(Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;Lcom/github/salomonbrys/kodein/TypeToken;)Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;
    .locals 2
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "setTypeToken"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder",
            "<TT;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet",
            "<TT;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setTypeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->getBinder$kodein_core_main()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v0
.end method
