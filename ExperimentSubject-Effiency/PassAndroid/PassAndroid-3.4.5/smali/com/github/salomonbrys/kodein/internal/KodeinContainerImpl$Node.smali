.class final Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
.super Ljava/lang/Object;
.source "KodeinContainerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0007J \u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J \u0010\u000c\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J%\u0010\u0010\u001a\u00020\u00112\u000e\u0010\n\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0012J \u0010\u0013\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0002R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;",
        "",
        "_key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "_overrideLevel",
        "",
        "_parent",
        "(Lcom/github/salomonbrys/kodein/Kodein$Key;ILcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V",
        "_check",
        "",
        "searchedKey",
        "searchedOverrideLevel",
        "_tree",
        "",
        "firstKey",
        "firstOverrideLevel",
        "check",
        "",
        "check$kodein_core_main",
        "displayString",
        "key",
        "overrideLevel",
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
.field private final _key:Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;"
        }
    .end annotation
.end field

.field private final _overrideLevel:I

.field private final _parent:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Key;ILcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V
    .locals 1
    .param p1, "_key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_overrideLevel"    # I
    .param p3, "_parent"    # Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I",
            "Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iput p2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_parent:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    return-void
.end method

.method private final _check(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Z
    .locals 1
    .param p1, "searchedKey"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "searchedOverrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)Z"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_parent:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_check(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final _tree(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;
    .locals 3
    .param p1, "firstKey"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "firstOverrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    if-ne p2, v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "       \u2554\u2550> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    invoke-direct {p0, v1, v2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->displayString(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_parent:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_tree(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       \u2560\u2500> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    invoke-direct {p0, v1, v2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->displayString(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final displayString(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 39
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overridden "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Bind;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final check$kodein_core_main(Lcom/github/salomonbrys/kodein/Kodein$Key;I)V
    .locals 4
    .param p1, "searchedKey"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "searchedOverrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    const-string v0, "searchedKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_check(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$DependencyLoopException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency recursion:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_tree(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "       \u255a\u2550> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->_overrideLevel:I

    invoke-direct {p0, p1, v3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->displayString(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/Kodein$DependencyLoopException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 49
    :cond_0
    return-void
.end method
