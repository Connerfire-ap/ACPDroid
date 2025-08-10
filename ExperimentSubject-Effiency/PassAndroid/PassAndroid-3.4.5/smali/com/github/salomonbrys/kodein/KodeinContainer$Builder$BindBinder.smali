.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BindBinder"
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
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u001f\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u001d\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0014H\u0086\u0004R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "T",
        "",
        "bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)V",
        "getBind",
        "()Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "builder",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "getBuilder$kodein_core_main",
        "()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "getOverrides",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
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
.field private final bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overrides:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "overrides"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->overrides:Ljava/lang/Boolean;

    .line 258
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Bind;->getType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;

    return-object v0
.end method

.method public final getBuilder$kodein_core_main()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    return-object v0
.end method

.method public final getOverrides()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->overrides:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V
    .locals 3
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
    const-string v1, "binding"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/bindings/Binding;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->bind:Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/bindings/Binding;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    .line 273
    .local v0, "key":Lcom/github/salomonbrys/kodein/Kodein$Key;
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->overrides:Ljava/lang/Boolean;

    # invokes: Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkOverrides(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V
    invoke-static {v1, v0, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->access$_checkOverrides(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V

    .line 275
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-virtual {v1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->getMap$kodein_core_main()Lcom/github/salomonbrys/kodein/internal/CMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/github/salomonbrys/kodein/internal/CMap;->set(Lcom/github/salomonbrys/kodein/Kodein$Key;Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 276
    return-void
.end method
