.class public final Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/Kodein$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConstantBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J+\u0010\u0007\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000b2\u0006\u0010\u000c\u001a\u0002H\t\u00a2\u0006\u0002\u0010\rR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;",
        "",
        "_tag",
        "_overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "With",
        "",
        "T",
        "valueType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "value",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V",
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
.field private final _overrides:Ljava/lang/Boolean;

.field private final _tag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/Kodein$Builder;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "_overrides"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "_tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->this$0:Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->_tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->_overrides:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final With(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V
    .locals 3
    .param p1, "valueType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->this$0:Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->_tag:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;->_overrides:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->bind(Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    move-result-object v1

    new-instance v0, Lcom/github/salomonbrys/kodein/bindings/InstanceBinding;

    invoke-direct {v0, p1, p2}, Lcom/github/salomonbrys/kodein/bindings/InstanceBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    invoke-virtual {v1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    return-void
.end method
