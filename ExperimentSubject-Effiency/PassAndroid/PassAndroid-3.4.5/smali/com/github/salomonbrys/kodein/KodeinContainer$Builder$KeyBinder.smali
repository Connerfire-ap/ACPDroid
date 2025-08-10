.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u0003B%\u0008\u0000\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u001d\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000eH\u0086\u0004R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;",
        "A",
        "T",
        "",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V",
        "getKey",
        "()Lcom/github/salomonbrys/kodein/Kodein$Key;",
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
.field private final key:Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "overrides"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    .line 235
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Bind;->getType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    # invokes: Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkOverrides(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V
    invoke-static {p1, v0, p3}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->access$_checkOverrides(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getKey()Lcom/github/salomonbrys/kodein/Kodein$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    return-object v0
.end method

.method public final with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V
    .locals 2
    .param p1, "binding"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<-TA;TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->this$0:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->getMap$kodein_core_main()Lcom/github/salomonbrys/kodein/internal/CMap;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v0, v1, p1}, Lcom/github/salomonbrys/kodein/internal/CMap;->set(Lcom/github/salomonbrys/kodein/Kodein$Key;Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 247
    return-void
.end method
