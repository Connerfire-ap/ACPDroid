.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;
.super Ljava/lang/Object;
.source "FrameSnapshot.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;


# static fields
.field private static final NOP:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;


# instance fields
.field private final locals:[Ljava/lang/Object;

.field private final stack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->NOP:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "locals"    # [Ljava/lang/Object;
    .param p2, "stack"    # [Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->locals:[Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->stack:[Ljava/lang/Object;

    .line 35
    return-void
.end method

.method static create(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;I)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/IFrame;
    .locals 3
    .param p0, "analyzer"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;
    .param p1, "popCount"    # I

    .line 48
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->reduce(Ljava/util/List;I)[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "locals":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->reduce(Ljava/util/List;I)[Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "stack":[Ljava/lang/Object;
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;

    invoke-direct {v2, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v2

    .line 49
    .end local v0    # "locals":[Ljava/lang/Object;
    .end local v1    # "stack":[Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->NOP:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;

    return-object v0
.end method

.method private static reduce(Ljava/util/List;I)[Ljava/lang/Object;
    .locals 5
    .param p1, "popCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 64
    .local v1, "size":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 65
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 66
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 67
    .local v3, "type":Ljava/lang/Object;
    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 68
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    .end local v3    # "type":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 77
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->locals:[Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 78
    const/4 v1, -0x1

    array-length v2, v3

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/FrameSnapshot;->stack:[Ljava/lang/Object;

    array-length v4, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method
