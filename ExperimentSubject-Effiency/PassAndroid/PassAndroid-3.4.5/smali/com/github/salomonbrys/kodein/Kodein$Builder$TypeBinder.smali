.class public final Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/Kodein$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0019\u0008\u0000\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00028\u00000\u0004R\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001d\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u000cH\u0086\u0004R\u001e\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00028\u00000\u0004R\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "T",
        "",
        "binder",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;)V",
        "getBinder$kodein_core_main",
        "()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "with",
        "",
        "binding",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;)V
    .locals 1
    .param p1, "binder"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    return-void
.end method


# virtual methods
.method public final getBinder$kodein_core_main()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    return-object v0
.end method

.method public final with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V
    .locals 1
    .param p1, "binding"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<*+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    invoke-virtual {v0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    return-void
.end method
