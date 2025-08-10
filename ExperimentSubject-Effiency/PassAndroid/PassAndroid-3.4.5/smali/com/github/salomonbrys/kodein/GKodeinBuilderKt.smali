.class public final Lcom/github/salomonbrys/kodein/GKodeinBuilderKt;
.super Ljava/lang/Object;
.source "GKodeinBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a<\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a*\u0010\t\u001a\u00020\n\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00060\u000bR\u00020\u00042\u0006\u0010\u000c\u001a\u0002H\u0002H\u0086\u000c\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "tag",
        "overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "with",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;",
        "value",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;Ljava/lang/Object;)V",
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
.method private static final bind(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "overrides"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 13
    .line 25
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$bind$$inlined$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$bind$$inlined$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic bind$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "overrides"    # Ljava/lang/Boolean;

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .end local p1    # "tag":Ljava/lang/Object;
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    .line 27
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$bind$$inlined$generic$2;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$bind$$inlined$generic$2;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 26
    invoke-virtual {p0, v0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v0

    return-object v0
.end method

.method private static final with(Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .line 28
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$with$$inlined$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/GKodeinBuilderKt$with$$inlined$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->With(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    return-void
.end method
