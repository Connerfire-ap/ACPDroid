.class Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final ACC_CONSTRUCTOR:I = 0x80000

.field static final APPEND_FRAME:I = 0xfc

.field static final CHOP_FRAME:I = 0xf8

.field static final FRAMES:I = 0x0

.field static final FULL_FRAME:I = 0xff

.field static final INSERTED_FRAMES:I = 0x1

.field static final MAXS:I = 0x2

.field static final NOTHING:I = 0x3

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private access:I

.field private annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

.field private cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

.field classReaderLength:I

.field classReaderOffset:I

.field private code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private final compute:I

.field private ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

.field private currentLocals:I

.field final cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

.field private final desc:I

.field private final descriptor:Ljava/lang/String;

.field exceptionCount:I

.field exceptions:[I

.field private firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

.field private frame:[I

.field private frameCount:I

.field private handlerCount:I

.field private ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

.field private lastCodeOffset:I

.field private lastHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

.field private lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private localVarCount:I

.field private localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private localVarTypeCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private methodParametersCount:I

.field private final name:I

.field private panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

.field private previousFrame:[I

.field private previousFrameOffset:I

.field signature:Ljava/lang/String;

.field private stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private stackSize:I

.field private subroutines:I

.field private synthetics:I

.field private tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;
    .param p7, "compute"    # I

    .line 459
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(I)V

    .line 243
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 460
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    if-nez v0, :cond_0

    .line 461
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    iput-object p0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 465
    :goto_0
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    .line 466
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 467
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    .line 468
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    .line 471
    :cond_1
    invoke-virtual {p1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->name:I

    .line 472
    invoke-virtual {p1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->desc:I

    .line 473
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 475
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 477
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 478
    array-length v0, p6

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    .line 479
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptions:[I

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v1, :cond_2

    .line 481
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptions:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "i":I
    :cond_2
    iput p7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    .line 485
    const/4 v0, 0x3

    if-eq p7, v0, :cond_4

    .line 487
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 488
    .local v0, "size":I
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 489
    add-int/lit8 v0, v0, -0x1

    .line 491
    :cond_3
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 492
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    .line 494
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 495
    iget v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 496
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 498
    .end local v0    # "size":I
    :cond_4
    return-void
.end method

.method private addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p1, "info"    # I
    .param p2, "successor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1709
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;-><init>()V

    .line 1710
    .local v0, "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    iput p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    .line 1711
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1713
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1714
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1715
    return-void
.end method

.method private endFrame()V
    .locals 1

    .line 1884
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1885
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1886
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1888
    :cond_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrame()V

    .line 1889
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    .line 1891
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrame:[I

    .line 1892
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    .line 1893
    return-void
.end method

.method private noSuccessor()V
    .locals 3

    .line 1722
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-nez v0, :cond_0

    .line 1723
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 1724
    .local v0, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;-><init>()V

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1725
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1726
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    invoke-virtual {v0, p0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->resolve(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;I[B)Z

    .line 1727
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1728
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1729
    .end local v0    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_0

    .line 1730
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->outputStackMax:I

    .line 1732
    :goto_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1733
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1735
    :cond_1
    return-void
.end method

.method private startFrame(III)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nLocal"    # I
    .param p3, "nStack"    # I

    .line 1869
    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1870
    .local v0, "n":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1871
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    .line 1873
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1874
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1875
    const/4 v2, 0x2

    aput p3, v1, v2

    .line 1876
    const/4 v1, 0x3

    return v1
.end method

.method private visitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;)V
    .locals 12
    .param p1, "f"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1749
    const/4 v0, 0x0

    .line 1750
    .local v0, "nTop":I
    const/4 v1, 0x0

    .line 1751
    .local v1, "nLocal":I
    const/4 v2, 0x0

    .line 1752
    .local v2, "nStack":I
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->inputLocals:[I

    .line 1753
    .local v3, "locals":[I
    iget-object v4, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->inputStack:[I

    .line 1756
    .local v4, "stacks":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v5, v6, :cond_3

    .line 1757
    aget v6, v3, v5

    .line 1758
    .local v6, "t":I
    const/high16 v9, 0x1000000

    if-ne v6, v9, :cond_0

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1761
    :cond_0
    add-int/lit8 v9, v0, 0x1

    add-int/2addr v1, v9

    .line 1762
    const/4 v0, 0x0

    .line 1764
    :goto_1
    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_2

    .line 1765
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 1756
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1770
    .end local v6    # "t":I
    :cond_3
    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 1771
    aget v6, v4, v5

    .line 1772
    .restart local v6    # "t":I
    add-int/lit8 v2, v2, 0x1

    .line 1773
    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    .line 1774
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1770
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1778
    .end local v6    # "t":I
    :cond_6
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-direct {p0, v6, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->startFrame(III)I

    move-result v6

    .line 1779
    .local v6, "frameIndex":I
    const/4 v5, 0x0

    :goto_3
    if-lez v1, :cond_9

    .line 1780
    aget v9, v3, v5

    .line 1781
    .local v9, "t":I
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "frameIndex":I
    .local v11, "frameIndex":I
    aput v9, v10, v6

    .line 1782
    if-eq v9, v8, :cond_7

    if-ne v9, v7, :cond_8

    .line 1783
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1779
    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, -0x1

    move v6, v11

    goto :goto_3

    .line 1786
    .end local v9    # "t":I
    .end local v11    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    :cond_9
    const/4 v5, 0x0

    :goto_4
    array-length v9, v4

    if-ge v5, v9, :cond_c

    .line 1787
    aget v9, v4, v5

    .line 1788
    .restart local v9    # "t":I
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "frameIndex":I
    .restart local v11    # "frameIndex":I
    aput v9, v10, v6

    .line 1789
    if-eq v9, v8, :cond_a

    if-ne v9, v7, :cond_b

    .line 1790
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 1786
    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v6, v11

    goto :goto_4

    .line 1793
    .end local v9    # "t":I
    .end local v11    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    :cond_c
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->endFrame()V

    .line 1794
    return-void
.end method

.method private visitImplicitFirstFrame()V
    .locals 11

    .line 1801
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 1802
    .local v0, "frameIndex":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    and-int/lit8 v3, v2, 0x8

    const/high16 v4, 0x1700000

    if-nez v3, :cond_1

    .line 1803
    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1804
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v3, "frameIndex":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v6, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v4

    aput v5, v2, v0

    move v0, v3

    goto :goto_0

    .line 1806
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v3    # "frameIndex":I
    const/4 v5, 0x6

    aput v5, v2, v0

    move v0, v3

    .line 1809
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1811
    .local v2, "i":I
    :goto_1
    move v3, v2

    .line 1812
    .local v3, "j":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3b

    sparse-switch v2, :sswitch_data_0

    .line 1850
    goto/16 :goto_6

    .line 1830
    :goto_2
    :sswitch_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_2

    .line 1831
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1833
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x4c

    if-ne v2, v7, :cond_3

    .line 1834
    add-int/lit8 v6, v6, 0x1

    .line 1835
    :goto_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_3

    .line 1836
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1839
    :cond_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v5, "frameIndex":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/2addr v6, v1

    .line 1840
    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v4

    aput v7, v2, v0

    .line 1841
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1843
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_4
    :sswitch_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_4

    .line 1844
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1846
    :cond_4
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 1847
    .end local v6    # "i":I
    .local v10, "i":I
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v4

    aput v6, v2, v0

    .line 1848
    move v0, v5

    move v2, v10

    goto :goto_5

    .line 1824
    .end local v5    # "frameIndex":I
    .end local v10    # "i":I
    .restart local v0    # "frameIndex":I
    .restart local v6    # "i":I
    :sswitch_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const/4 v7, 0x4

    aput v7, v2, v0

    .line 1825
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1821
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const/4 v7, 0x2

    aput v7, v2, v0

    .line 1822
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1827
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_4
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const/4 v7, 0x3

    aput v7, v2, v0

    .line 1828
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1818
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_5
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    aput v1, v2, v0

    .line 1819
    move v0, v5

    move v2, v6

    .line 1852
    .end local v3    # "j":I
    .end local v5    # "frameIndex":I
    .end local v6    # "i":I
    .restart local v0    # "frameIndex":I
    .restart local v2    # "i":I
    :goto_5
    goto/16 :goto_1

    .line 1853
    .end local v2    # "i":I
    .restart local v6    # "i":I
    :goto_6
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, -0x3

    aput v3, v2, v1

    .line 1854
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->endFrame()V

    .line 1855
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private visitSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 4
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1267
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_3

    .line 1268
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-nez v1, :cond_1

    .line 1269
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1271
    invoke-direct {p0, v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1272
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1274
    aget-object v1, p2, v0

    invoke-direct {p0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1275
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    iget v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 1279
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    .line 1281
    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1282
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 1283
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1287
    .end local v0    # "i":I
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->noSuccessor()V

    .line 1289
    :cond_3
    return-void
.end method

.method private writeFrame()V
    .locals 14

    .line 1900
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    .line 1901
    .local v2, "clocalsSize":I
    const/4 v3, 0x2

    aget v0, v0, v3

    .line 1902
    .local v0, "cstackSize":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/16 v6, 0x32

    if-ge v3, v6, :cond_0

    .line 1903
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1904
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v5, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1905
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1906
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1907
    return-void

    .line 1909
    :cond_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrame:[I

    aget v6, v3, v1

    .line 1910
    .local v6, "localsSize":I
    const/16 v7, 0xff

    .line 1911
    .local v7, "type":I
    const/4 v8, 0x0

    .line 1913
    .local v8, "k":I
    iget v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    if-nez v9, :cond_1

    .line 1914
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    aget v3, v3, v4

    .local v3, "delta":I
    goto :goto_0

    .line 1916
    .end local v3    # "delta":I
    :cond_1
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    aget v9, v9, v4

    aget v3, v3, v4

    sub-int/2addr v9, v3

    add-int/lit8 v3, v9, -0x1

    .line 1918
    .restart local v3    # "delta":I
    :goto_0
    const/16 v9, 0xf7

    const/16 v10, 0x40

    const/16 v11, 0xfb

    if-nez v0, :cond_3

    .line 1919
    sub-int v8, v2, v6

    .line 1920
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 1933
    :pswitch_0
    const/16 v7, 0xfc

    goto :goto_2

    .line 1928
    :pswitch_1
    if-ge v3, v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0xfb

    :goto_1
    move v7, v4

    .line 1929
    goto :goto_2

    .line 1924
    :pswitch_2
    const/16 v7, 0xf8

    .line 1925
    move v6, v2

    .line 1926
    nop

    .line 1934
    :goto_2
    goto :goto_4

    .line 1936
    :cond_3
    if-ne v2, v6, :cond_5

    if-ne v0, v1, :cond_5

    .line 1937
    const/16 v1, 0x3f

    if-ge v3, v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v10, 0xf7

    :goto_3
    move v7, v10

    .line 1940
    :cond_5
    :goto_4
    const/16 v1, 0xff

    if-eq v7, v1, :cond_7

    .line 1942
    const/4 v4, 0x3

    .line 1943
    .local v4, "l":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    if-ge v10, v6, :cond_7

    .line 1944
    iget-object v12, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    aget v12, v12, v4

    iget-object v13, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v4

    if-eq v12, v13, :cond_6

    .line 1945
    const/16 v7, 0xff

    .line 1946
    goto :goto_6

    .line 1948
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 1943
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1951
    .end local v4    # "l":I
    .end local v10    # "j":I
    :cond_7
    :goto_6
    sparse-switch v7, :sswitch_data_0

    .line 1976
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v4, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1977
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v5, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1978
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1979
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    invoke-direct {p0, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    goto :goto_7

    .line 1971
    :sswitch_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit16 v4, v8, 0xfb

    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1972
    add-int/lit8 v1, v6, 0x3

    add-int/lit8 v4, v2, 0x3

    invoke-direct {p0, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1973
    goto :goto_7

    .line 1965
    :sswitch_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1966
    goto :goto_7

    .line 1968
    :sswitch_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit16 v4, v8, 0xfb

    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1969
    goto :goto_7

    .line 1960
    :sswitch_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1962
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1963
    goto :goto_7

    .line 1956
    :sswitch_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit8 v4, v3, 0x40

    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1957
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1958
    goto :goto_7

    .line 1953
    :sswitch_5
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1954
    nop

    .line 1981
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x40 -> :sswitch_4
        0xf7 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfb -> :sswitch_1
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private writeFrameType(Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 2054
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_0

    .line 2056
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2057
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2061
    :goto_0
    return-void
.end method

.method private writeFrameTypes(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1995
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1996
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    aget v1, v1, v0

    .line 1997
    .local v1, "t":I
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    .line 1998
    .local v2, "d":I
    const/4 v3, 0x7

    const/high16 v4, 0xff00000

    const v5, 0xfffff

    if-nez v2, :cond_0

    .line 1999
    and-int/2addr v5, v1

    .line 2000
    .local v5, "v":I
    and-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 2009
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_1

    .line 2006
    :sswitch_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aget-object v4, v4, v5

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2007
    goto :goto_1

    .line 2002
    :sswitch_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v4, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v6, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 2003
    invoke-virtual {v4, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v4

    .line 2002
    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2004
    nop

    .line 2011
    .end local v5    # "v":I
    :goto_1
    goto/16 :goto_4

    .line 2012
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2013
    .local v6, "sb":Ljava/lang/StringBuilder;
    shr-int/lit8 v2, v2, 0x1c

    .line 2014
    :goto_2
    add-int/lit8 v7, v2, -0x1

    .end local v2    # "d":I
    .local v7, "d":I
    if-lez v2, :cond_1

    .line 2015
    const/16 v2, 0x5b

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v7

    goto :goto_2

    .line 2017
    :cond_1
    and-int v2, v1, v4

    const/high16 v4, 0x1700000

    if-ne v2, v4, :cond_2

    .line 2018
    const/16 v2, 0x4c

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    and-int v4, v1, v5

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const/16 v2, 0x3b

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2022
    :cond_2
    and-int/lit8 v2, v1, 0xf

    packed-switch v2, :pswitch_data_0

    .line 2045
    :pswitch_0
    const/16 v2, 0x4a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2042
    :pswitch_1
    const/16 v2, 0x53

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2043
    goto :goto_3

    .line 2039
    :pswitch_2
    const/16 v2, 0x43

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2040
    goto :goto_3

    .line 2036
    :pswitch_3
    const/16 v2, 0x42

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2037
    goto :goto_3

    .line 2033
    :pswitch_4
    const/16 v2, 0x5a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2034
    goto :goto_3

    .line 2030
    :pswitch_5
    const/16 v2, 0x44

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2031
    goto :goto_3

    .line 2027
    :pswitch_6
    const/16 v2, 0x46

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2028
    goto :goto_3

    .line 2024
    :pswitch_7
    const/16 v2, 0x49

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2025
    nop

    .line 2048
    :goto_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1995
    .end local v1    # "t":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "d":I
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2051
    .end local v0    # "i":I
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1700000 -> :sswitch_1
        0x1800000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final getSize()I
    .locals 13

    .line 2073
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_0

    .line 2074
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 2076
    :cond_0
    const/16 v0, 0x8

    .line 2077
    .local v0, "size":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    const-string v3, "RuntimeVisibleTypeAnnotations"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xffff

    if-lez v1, :cond_a

    .line 2078
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    if-gt v1, v6, :cond_9

    .line 2081
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v7, "Code"

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2082
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x12

    iget v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v1, v7

    add-int/2addr v0, v1

    .line 2083
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_1

    .line 2084
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v7, "LocalVariableTable"

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2085
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2087
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_2

    .line 2088
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v7, "LocalVariableTypeTable"

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2089
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2091
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_3

    .line 2092
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v7, "LineNumberTable"

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2093
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2095
    :cond_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_6

    .line 2096
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v1, v6

    const/16 v7, 0x32

    if-lt v1, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 2097
    .local v1, "zip":Z
    :goto_0
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    if-eqz v1, :cond_5

    const-string v8, "StackMapTable"

    goto :goto_1

    :cond_5
    const-string v8, "StackMap"

    :goto_1
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2098
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v7, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v7

    .line 2100
    .end local v1    # "zip":Z
    :cond_6
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    .line 2101
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2102
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2104
    :cond_7
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 2105
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2106
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2108
    :cond_8
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v7, :cond_a

    .line 2109
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v9, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v10, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget v11, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    iget v12, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v7 .. v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 2079
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Method code too large!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2113
    :cond_a
    :goto_2
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_b

    .line 2114
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v7, "Exceptions"

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2115
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2117
    :cond_b
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_d

    .line 2118
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v1, v6

    const/16 v6, 0x31

    if-lt v1, v6, :cond_c

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v6, 0x40000

    and-int/2addr v1, v6

    if-eqz v1, :cond_d

    .line 2120
    :cond_c
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "Synthetic"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2121
    add-int/lit8 v0, v0, 0x6

    .line 2124
    :cond_d
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v6, 0x20000

    and-int/2addr v1, v6

    if-eqz v1, :cond_e

    .line 2125
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "Deprecated"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2126
    add-int/lit8 v0, v0, 0x6

    .line 2128
    :cond_e
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2129
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "Signature"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2130
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2131
    add-int/lit8 v0, v0, 0x8

    .line 2133
    :cond_f
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_10

    .line 2134
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "MethodParameters"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2135
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 2137
    :cond_10
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_11

    .line 2138
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "AnnotationDefault"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2139
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 2141
    :cond_11
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_12

    .line 2142
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2143
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2145
    :cond_12
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_13

    .line 2146
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v6, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2147
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2149
    :cond_13
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_14

    .line 2150
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2151
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2153
    :cond_14
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_15

    .line 2154
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2155
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2157
    :cond_15
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_17

    .line 2158
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2159
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    array-length v2, v1

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    .line 2160
    array-length v1, v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    if-lt v1, v2, :cond_17

    .line 2161
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aget-object v3, v2, v1

    if-nez v3, :cond_16

    const/4 v2, 0x0

    goto :goto_4

    :cond_16
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    .line 2160
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2164
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_19

    .line 2165
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2166
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    array-length v2, v1

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    .line 2167
    array-length v1, v1

    sub-int/2addr v1, v4

    .restart local v1    # "i":I
    :goto_5
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    if-lt v1, v2, :cond_19

    .line 2168
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aget-object v3, v2, v1

    if-nez v3, :cond_18

    const/4 v2, 0x0

    goto :goto_6

    :cond_18
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    .line 2167
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 2171
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v1, :cond_1a

    .line 2172
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 2174
    :cond_1a
    return v0
.end method

.method final put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V
    .locals 23
    .param p1, "out"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2185
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/16 v9, 0x40

    .line 2186
    .local v9, "FACTOR":I
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v10, 0x40000

    and-int v2, v1, v10

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0xe0000

    or-int v11, v2, v3

    .line 2189
    .local v11, "mask":I
    not-int v2, v11

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->name:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->desc:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2190
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderOffset:I

    if-eqz v1, :cond_0

    .line 2191
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderOffset:I

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderLength:I

    invoke-virtual {v8, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2192
    return-void

    .line 2194
    :cond_0
    const/4 v1, 0x0

    .line 2195
    .local v1, "attributeCount":I
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    if-lez v2, :cond_1

    .line 2196
    add-int/lit8 v1, v1, 0x1

    .line 2198
    :cond_1
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_2

    .line 2199
    add-int/lit8 v1, v1, 0x1

    .line 2201
    :cond_2
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v2, :cond_4

    .line 2202
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v2, v13

    if-lt v2, v12, :cond_3

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    .line 2204
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2207
    :cond_4
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v14, 0x20000

    and-int/2addr v2, v14

    if-eqz v2, :cond_5

    .line 2208
    add-int/lit8 v1, v1, 0x1

    .line 2210
    :cond_5
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2211
    add-int/lit8 v1, v1, 0x1

    .line 2213
    :cond_6
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_7

    .line 2214
    add-int/lit8 v1, v1, 0x1

    .line 2216
    :cond_7
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_8

    .line 2217
    add-int/lit8 v1, v1, 0x1

    .line 2219
    :cond_8
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    .line 2220
    add-int/lit8 v1, v1, 0x1

    .line 2222
    :cond_9
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    .line 2223
    add-int/lit8 v1, v1, 0x1

    .line 2225
    :cond_a
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    .line 2226
    add-int/lit8 v1, v1, 0x1

    .line 2228
    :cond_b
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    .line 2229
    add-int/lit8 v1, v1, 0x1

    .line 2231
    :cond_c
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_d

    .line 2232
    add-int/lit8 v1, v1, 0x1

    .line 2234
    :cond_d
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    .line 2235
    add-int/lit8 v1, v1, 0x1

    .line 2237
    :cond_e
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v2, :cond_f

    .line 2238
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 2240
    :cond_f
    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2241
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleTypeAnnotations"

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v16, 0x1

    if-lez v2, :cond_28

    .line 2242
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0xc

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2243
    .local v2, "size":I
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v3, :cond_10

    .line 2244
    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2246
    :cond_10
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v3, :cond_11

    .line 2247
    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2249
    :cond_11
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v3, :cond_12

    .line 2250
    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2252
    :cond_12
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v3, :cond_13

    .line 2253
    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2255
    :cond_13
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v3, :cond_14

    .line 2256
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2258
    :cond_14
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v3, :cond_15

    .line 2259
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2261
    :cond_15
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v3, :cond_16

    .line 2262
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v14, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget v12, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    iget v13, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    move/from16 v20, v10

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-virtual/range {v17 .. v22}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIII)I

    move-result v3

    add-int/2addr v2, v3

    move v10, v2

    goto :goto_0

    .line 2261
    :cond_16
    move v10, v2

    .line 2265
    .end local v2    # "size":I
    .local v10, "size":I
    :goto_0
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2266
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2267
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v2, v3, v5, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2268
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2269
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    if-lez v2, :cond_17

    .line 2270
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 2271
    .local v2, "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    :goto_1
    if-eqz v2, :cond_17

    .line 2272
    iget-object v3, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v8, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    .line 2273
    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v3

    iget v4, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->type:I

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2274
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    goto :goto_1

    .line 2277
    .end local v2    # "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    :cond_17
    const/4 v1, 0x0

    .line 2278
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_18

    .line 2279
    add-int/lit8 v1, v1, 0x1

    .line 2281
    :cond_18
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_19

    .line 2282
    add-int/lit8 v1, v1, 0x1

    .line 2284
    :cond_19
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_1a

    .line 2285
    add-int/lit8 v1, v1, 0x1

    .line 2287
    :cond_1a
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v2, :cond_1b

    .line 2288
    add-int/lit8 v1, v1, 0x1

    .line 2290
    :cond_1b
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_1c

    .line 2291
    add-int/lit8 v1, v1, 0x1

    .line 2293
    :cond_1c
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_1d

    .line 2294
    add-int/lit8 v1, v1, 0x1

    .line 2296
    :cond_1d
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v2, :cond_1e

    .line 2297
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    move v12, v1

    goto :goto_2

    .line 2296
    :cond_1e
    move v12, v1

    .line 2299
    .end local v1    # "attributeCount":I
    .local v12, "attributeCount":I
    :goto_2
    invoke-virtual {v8, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2300
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_1f

    .line 2301
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2302
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2303
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2305
    :cond_1f
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_20

    .line 2306
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2307
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarTypeCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2308
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2310
    :cond_20
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_21

    .line 2311
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2312
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumberCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2313
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2315
    :cond_21
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_24

    .line 2316
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x32

    if-lt v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_3

    :cond_22
    const/4 v1, 0x0

    .line 2317
    .local v1, "zip":Z
    :goto_3
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    if-eqz v1, :cond_23

    const-string v3, "StackMapTable"

    goto :goto_4

    :cond_23
    const-string v3, "StackMap"

    :goto_4
    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2318
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/2addr v2, v6

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2319
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v2, v5, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2321
    .end local v1    # "zip":Z
    :cond_24
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_25

    .line 2322
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2323
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2325
    :cond_25
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_26

    .line 2326
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2327
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2329
    :cond_26
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v1, :cond_27

    .line 2330
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget v13, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    iget v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    move/from16 v17, v9

    const/4 v9, 0x0

    .end local v9    # "FACTOR":I
    .local v17, "FACTOR":I
    move v5, v13

    const/4 v13, 0x2

    move v6, v14

    move-object v14, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    goto :goto_5

    .line 2329
    .end local v17    # "FACTOR":I
    .restart local v9    # "FACTOR":I
    :cond_27
    move-object v14, v7

    move/from16 v17, v9

    const/4 v9, 0x0

    const/4 v13, 0x2

    .end local v9    # "FACTOR":I
    .restart local v17    # "FACTOR":I
    goto :goto_5

    .line 2241
    .end local v10    # "size":I
    .end local v12    # "attributeCount":I
    .end local v17    # "FACTOR":I
    .local v1, "attributeCount":I
    .restart local v9    # "FACTOR":I
    :cond_28
    move-object v14, v7

    move/from16 v17, v9

    const/4 v9, 0x0

    const/4 v13, 0x2

    .end local v9    # "FACTOR":I
    .restart local v17    # "FACTOR":I
    move v12, v1

    .line 2333
    .end local v1    # "attributeCount":I
    .restart local v12    # "attributeCount":I
    :goto_5
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_29

    .line 2334
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2336
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-ge v1, v2, :cond_29

    .line 2338
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptions:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2337
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2341
    .end local v1    # "i":I
    :cond_29
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2b

    .line 2342
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_2a

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 2344
    :cond_2a
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2347
    :cond_2b
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    .line 2348
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2350
    :cond_2c
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 2351
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 2352
    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2354
    :cond_2d
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_2e

    .line 2355
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2356
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParametersCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2358
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v9, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2360
    :cond_2e
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v1, :cond_2f

    .line 2361
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2362
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2363
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v9, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2365
    :cond_2f
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_30

    .line 2366
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2367
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2369
    :cond_30
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_31

    .line 2370
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2371
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2373
    :cond_31
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_32

    .line 2374
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2375
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2377
    :cond_32
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_33

    .line 2378
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2379
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2381
    :cond_33
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_34

    .line 2382
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2383
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    invoke-static {v1, v2, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2385
    :cond_34
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_35

    .line 2386
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 2387
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    invoke-static {v1, v2, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2389
    :cond_35
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v1, :cond_36

    .line 2390
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 2392
    :cond_36
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 529
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 531
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 532
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 533
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 534
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 535
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 537
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 538
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 540
    :goto_0
    return-object v1
.end method

.method public visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 7

    .line 519
    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 520
    new-instance v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    return-object v6
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 600
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 602
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 605
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 607
    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 611
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 1693
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 874
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 876
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v1, :cond_b

    .line 877
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_3

    .line 882
    :cond_0
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 883
    .local v1, "c":C
    const/4 v2, -0x2

    const/16 v5, 0x4a

    const/16 v6, 0x44

    packed-switch p1, :pswitch_data_0

    .line 895
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_8

    goto :goto_1

    .line 891
    :pswitch_0
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    add-int/2addr v2, v3

    .line 892
    .local v2, "size":I
    goto :goto_2

    .line 888
    .end local v2    # "size":I
    :pswitch_1
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :cond_4
    :goto_0
    add-int/2addr v2, v3

    .line 889
    .restart local v2    # "size":I
    goto :goto_2

    .line 885
    .end local v2    # "size":I
    :pswitch_2
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_6

    :cond_5
    const/4 v4, 0x2

    :cond_6
    add-int/2addr v2, v4

    .line 886
    .restart local v2    # "size":I
    goto :goto_2

    .line 895
    .end local v2    # "size":I
    :cond_7
    :goto_1
    const/4 v2, -0x3

    :cond_8
    add-int/2addr v2, v3

    .line 899
    .restart local v2    # "size":I
    :goto_2
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_9

    .line 900
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 902
    :cond_9
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_4

    .line 878
    .end local v1    # "c":C
    .end local v2    # "size":I
    :cond_a
    :goto_3
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p1, v3, v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 906
    :cond_b
    :goto_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 907
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 616
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-nez v0, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 621
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/CurrentFrame;-><init>()V

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 626
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 627
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 628
    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v3

    .line 627
    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->initInputFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;I)V

    .line 629
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitImplicitFirstFrame()V

    goto/16 :goto_a

    .line 631
    :cond_1
    if-ne p1, v1, :cond_2

    .line 632
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->set(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 640
    :cond_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;)V

    goto/16 :goto_a

    .line 642
    :cond_3
    if-ne p1, v1, :cond_b

    .line 643
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrame:[I

    if-nez v0, :cond_4

    .line 644
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitImplicitFirstFrame()V

    .line 646
    :cond_4
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    .line 647
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    invoke-direct {p0, v0, p2, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 648
    .local v0, "frameIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v2, ""

    const/high16 v3, 0x1800000

    const/high16 v4, 0x1700000

    if-ge v1, p2, :cond_7

    .line 649
    aget-object v5, p3, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 650
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v3, "frameIndex":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    aget-object v6, p3, v1

    check-cast v6, Ljava/lang/String;

    .line 651
    invoke-virtual {v5, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, v0

    move v0, v3

    goto :goto_1

    .line 652
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_5
    aget-object v4, p3, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 653
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v3    # "frameIndex":I
    aget-object v4, p3, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    move v0, v3

    goto :goto_1

    .line 655
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_6
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v5, "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    aget-object v7, p3, v1

    check-cast v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v7, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    .line 656
    invoke-virtual {v6, v2, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, v0

    move v0, v5

    .line 648
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p4, :cond_a

    .line 661
    aget-object v5, p5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 662
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v6, "frameIndex":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    aget-object v8, p5, v1

    check-cast v8, Ljava/lang/String;

    .line 663
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v4

    aput v7, v5, v0

    move v0, v6

    goto :goto_3

    .line 664
    .end local v6    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_8
    aget-object v5, p5, v1

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 665
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    aget-object v7, p5, v1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    goto :goto_3

    .line 667
    .end local v6    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_9
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    aget-object v8, p5, v1

    check-cast v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    .line 668
    invoke-virtual {v7, v2, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v7

    or-int/2addr v7, v3

    aput v7, v5, v0

    move v0, v6

    .line 660
    .end local v6    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 672
    .end local v1    # "i":I
    :cond_a
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->endFrame()V

    .line 673
    .end local v0    # "frameIndex":I
    goto/16 :goto_a

    .line 675
    :cond_b
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v0, :cond_c

    .line 676
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 677
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    .local v0, "delta":I
    goto :goto_4

    .line 679
    .end local v0    # "delta":I
    :cond_c
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 680
    .restart local v0    # "delta":I
    if-gez v0, :cond_e

    .line 681
    const/4 v1, 0x3

    if-ne p1, v1, :cond_d

    .line 682
    return-void

    .line 684
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 689
    :cond_e
    :goto_4
    const/16 v1, 0x40

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 720
    :pswitch_0
    if-ge v0, v1, :cond_f

    .line 721
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_5

    .line 723
    :cond_f
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v3, 0xf7

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 726
    :goto_5
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 713
    :pswitch_1
    if-ge v0, v1, :cond_10

    .line 714
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_9

    .line 716
    :cond_10
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v3, 0xfb

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 718
    goto :goto_9

    .line 709
    :pswitch_2
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    .line 710
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    rsub-int v3, p2, 0xfb

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 711
    goto :goto_9

    .line 702
    :pswitch_3
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    .line 703
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit16 v3, p2, 0xfb

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 704
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p2, :cond_11

    .line 705
    aget-object v3, p3, v1

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 707
    .end local v1    # "i":I
    :cond_11
    goto :goto_9

    .line 691
    :pswitch_4
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    .line 692
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 693
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p2, :cond_12

    .line 694
    aget-object v3, p3, v1

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 696
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 697
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p4, :cond_13

    .line 698
    aget-object v3, p5, v1

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 700
    .end local v1    # "i":I
    :cond_13
    nop

    .line 730
    :goto_9
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousFrameOffset:I

    .line 731
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frameCount:I

    .line 734
    .end local v0    # "delta":I
    :goto_a
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    .line 735
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentLocals:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 736
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 4
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 1208
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1209
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/16 v1, 0x84

    if-eqz v0, :cond_1

    .line 1210
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1211
    :cond_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1214
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 1216
    add-int/lit8 v0, p1, 0x1

    .line 1217
    .local v0, "n":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_2

    .line 1218
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 1222
    .end local v0    # "n":I
    :cond_2
    const/16 v0, 0xff

    if-gt p1, v0, :cond_4

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_4

    const/16 v0, -0x80

    if-ge p2, v0, :cond_3

    goto :goto_0

    .line 1226
    :cond_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_1

    .line 1223
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    .line 1224
    invoke-virtual {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1228
    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 740
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 742
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 745
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_5

    .line 746
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 751
    .local v0, "size":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_1

    .line 752
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 754
    :cond_1
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 747
    .end local v0    # "size":I
    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 757
    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 759
    :cond_4
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->noSuccessor()V

    .line 762
    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1315
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 1317
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    const v1, -0xffff01

    and-int/2addr v1, p1

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int p1, v1, v2

    .line 1318
    invoke-static {p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 1320
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1321
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 1323
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1324
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1325
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1328
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1330
    :goto_0
    return-object v1
.end method

.method public visitIntInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 766
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 768
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_3

    .line 769
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_3

    .line 774
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/2addr v0, v2

    .line 775
    .local v0, "size":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_1

    .line 776
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 778
    :cond_1
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 770
    .end local v0    # "size":I
    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 782
    :cond_3
    :goto_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    .line 783
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_2

    .line 785
    :cond_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 787
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 965
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 966
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 968
    .local v1, "argSize":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/4 v3, 0x0

    const/16 v4, 0xba

    if-eqz v2, :cond_4

    .line 969
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    if-nez v1, :cond_1

    .line 983
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 986
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 988
    :cond_1
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v5, v1, 0x2

    sub-int/2addr v2, v5

    and-int/lit8 v5, v1, 0x3

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    .line 991
    .local v2, "size":I
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v2, v5, :cond_2

    .line 992
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 994
    :cond_2
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 970
    .end local v2    # "size":I
    :cond_3
    :goto_0
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v2, v4, v3, v5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 998
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v2, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 999
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1000
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1004
    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1005
    .local v3, "isWide":Z
    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v4, p1, -0x21

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    move p1, v4

    .line 1006
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1007
    const/4 v4, 0x0

    .line 1009
    .local v4, "nextInsn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/16 v6, 0xa8

    const/16 v7, 0xa7

    if-eqz v5, :cond_6

    .line 1010
    iget v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 1011
    iget-object v5, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-virtual {v5, p1, v1, v9, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1013
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v5

    iget v8, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1015
    invoke-direct {p0, v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1016
    if-eq p1, v7, :cond_6

    .line 1018
    new-instance v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    move-object v4, v5

    goto :goto_2

    .line 1020
    :cond_2
    if-ne v8, v2, :cond_3

    .line 1021
    iget-object v5, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-virtual {v5, p1, v1, v9, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    goto :goto_2

    .line 1023
    :cond_3
    if-ne p1, v6, :cond_5

    .line 1024
    iget v5, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_4

    .line 1025
    iget v5, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1026
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->subroutines:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->subroutines:I

    .line 1028
    :cond_4
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v8, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1029
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/2addr v5, v2

    invoke-direct {p0, v5, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1031
    new-instance v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    move-object v4, v5

    goto :goto_2

    .line 1042
    :cond_5
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    sget-object v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->SIZE:[I

    aget v8, v8, p1

    add-int/2addr v5, v8

    iput v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    .line 1043
    invoke-direct {p0, v5, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1048
    :cond_6
    :goto_2
    iget v5, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    iget v5, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    sub-int/2addr v5, v8

    const/16 v8, -0x8000

    if-ge v5, v8, :cond_b

    .line 1057
    if-ne p1, v7, :cond_7

    .line 1058
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_4

    .line 1059
    :cond_7
    if-ne p1, v6, :cond_8

    .line 1060
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_4

    .line 1064
    :cond_8
    if-eqz v4, :cond_9

    .line 1065
    iget v1, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1067
    :cond_9
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v5, 0xa6

    if-gt p1, v5, :cond_a

    add-int/lit8 v5, p1, 0x1

    xor-int/2addr v5, v2

    sub-int/2addr v5, v2

    goto :goto_3

    :cond_a
    xor-int/lit8 v5, p1, 0x1

    :goto_3
    invoke-virtual {v1, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1069
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1070
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1072
    :goto_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    goto :goto_5

    .line 1073
    :cond_b
    if-eqz v3, :cond_c

    .line 1079
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit8 v1, p1, 0x21

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1080
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    goto :goto_5

    .line 1088
    :cond_c
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1089
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    sub-int/2addr v5, v2

    invoke-virtual {p2, p0, v0, v5, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    .line 1091
    :goto_5
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_e

    .line 1092
    if-eqz v4, :cond_d

    .line 1097
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1099
    :cond_d
    if-ne p1, v7, :cond_e

    .line 1100
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->noSuccessor()V

    .line 1103
    :cond_e
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 4
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1108
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->hasAsmInsns:Z

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->resolve(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;I[B)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->hasAsmInsns:Z

    .line 1110
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1111
    return-void

    .line 1113
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 1114
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_2

    .line 1115
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    if-ne v0, v1, :cond_1

    .line 1117
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1118
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1119
    return-void

    .line 1122
    :cond_1
    invoke-direct {p0, v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1125
    :cond_2
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1126
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    if-nez v0, :cond_3

    .line 1127
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;-><init>()V

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1128
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1131
    :cond_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_5

    .line 1132
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    if-ne v0, v1, :cond_4

    .line 1133
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1134
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1135
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1136
    return-void

    .line 1138
    :cond_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1140
    :cond_5
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_0

    .line 1141
    :cond_6
    if-ne v0, v1, :cond_8

    .line 1142
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-nez v0, :cond_7

    .line 1147
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_0

    .line 1151
    :cond_7
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_0

    .line 1153
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1154
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_9

    .line 1156
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->outputStackMax:I

    .line 1157
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1160
    :cond_9
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1162
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    .line 1163
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 1165
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v0, :cond_a

    .line 1166
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1168
    :cond_a
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1170
    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1174
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1175
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1177
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/16 v2, 0x12

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    .line 1178
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 1183
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    if-eq v1, v4, :cond_2

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1186
    :cond_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/2addr v1, v6

    .local v1, "size":I
    goto :goto_1

    .line 1184
    .end local v1    # "size":I
    :cond_2
    :goto_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x2

    .line 1189
    .restart local v1    # "size":I
    :goto_1
    iget v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v1, v5, :cond_3

    .line 1190
    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 1192
    :cond_3
    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_3

    .line 1179
    .end local v1    # "size":I
    :cond_4
    :goto_2
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v2, v5, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1196
    :cond_5
    :goto_3
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    .line 1197
    .local v1, "index":I
    iget v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    if-eq v5, v4, :cond_8

    iget v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    if-ne v4, v3, :cond_6

    goto :goto_4

    .line 1199
    :cond_6
    const/16 v3, 0x100

    if-lt v1, v3, :cond_7

    .line 1200
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_5

    .line 1202
    :cond_7
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v3, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_5

    .line 1198
    :cond_8
    :goto_4
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1204
    :goto_5
    return-void
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1443
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1446
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumberCount:I

    .line 1447
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1448
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1449
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p6, "index"    # I

    .line 1378
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1379
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v1, :cond_0

    .line 1380
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1382
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarTypeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarTypeCount:I

    .line 1383
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, p4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    iget v3, p4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    sub-int/2addr v2, v3

    .line 1384
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 1385
    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    .line 1386
    invoke-virtual {v1, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1388
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v1, :cond_2

    .line 1389
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1391
    :cond_2
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVarCount:I

    .line 1392
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, p4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    iget v3, p4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    sub-int/2addr v2, v3

    .line 1393
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 1394
    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    .line 1395
    invoke-virtual {v1, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1396
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1398
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1399
    .local v1, "c":C
    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr v0, p6

    .line 1400
    .local v0, "n":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 1401
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 1404
    .end local v0    # "n":I
    .end local v1    # "c":C
    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 1413
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 1415
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 1417
    aget-object v2, p3, v1

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    aget-object v4, p3, v1

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    sub-int/2addr v3, v4

    .line 1418
    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    .line 1419
    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1421
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1422
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_1

    .line 1424
    :cond_1
    iget-object v2, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;->b:[B

    iget v3, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;->offset:I

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 1425
    .local v2, "length":I
    iget-object v3, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;->b:[B

    iget v4, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;->offset:I

    invoke-virtual {v0, v3, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1428
    .end local v2    # "length":I
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v2, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1429
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x1

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 1431
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p7, :cond_2

    .line 1432
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1433
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_2

    .line 1435
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1436
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1438
    :goto_2
    return-object v1
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1250
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1252
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    .line 1253
    .local v0, "source":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1254
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1255
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    .line 1256
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 1258
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1259
    aget-object v3, p3, v1

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1263
    return-void
.end method

.method public visitMaxs(II)V
    .locals 17
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 1453
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-nez v2, :cond_f

    .line 1455
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1456
    .local v2, "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    :goto_0
    const/high16 v6, 0x1700000

    const-string v7, "java/lang/Throwable"

    if-eqz v2, :cond_2

    .line 1457
    iget-object v8, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v8

    .line 1458
    .local v8, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v9, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v9

    .line 1459
    .local v9, "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v10, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v10

    .line 1461
    .local v10, "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v11, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->desc:Ljava/lang/String;

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->desc:Ljava/lang/String;

    .line 1463
    .local v7, "t":Ljava/lang/String;
    :goto_1
    iget-object v11, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v11, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v6, v11

    .line 1465
    .local v6, "kind":I
    iget v11, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1467
    :goto_2
    if-eq v8, v10, :cond_1

    .line 1469
    new-instance v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    invoke-direct {v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;-><init>()V

    .line 1470
    .local v11, "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    iput v6, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    .line 1471
    iput-object v9, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1473
    iget-object v12, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iput-object v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1474
    iput-object v11, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1476
    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1477
    .end local v11    # "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    goto :goto_2

    .line 1478
    :cond_1
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1479
    .end local v6    # "kind":I
    .end local v7    # "t":Ljava/lang/String;
    .end local v8    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v10    # "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_0

    .line 1482
    :cond_2
    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1483
    .local v8, "f":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;
    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->access:I

    iget-object v11, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v11

    iget v12, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->initInputFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;I)V

    .line 1485
    invoke-direct {v0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;)V

    .line 1493
    const/4 v9, 0x0

    .line 1494
    .local v9, "max":I
    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1495
    .local v10, "changed":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_3
    if-eqz v10, :cond_7

    .line 1497
    move-object v11, v10

    .line 1498
    .local v11, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1499
    iput-object v3, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1500
    iget-object v8, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1502
    iget v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_3

    .line 1503
    iget v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/2addr v12, v4

    iput v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1506
    :cond_3
    iget v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1508
    iget-object v12, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->inputStack:[I

    array-length v12, v12

    iget v13, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->outputStackMax:I

    add-int/2addr v12, v13

    .line 1509
    .local v12, "blockMax":I
    if-le v12, v9, :cond_4

    .line 1510
    move v9, v12

    .line 1513
    :cond_4
    iget-object v13, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1514
    .local v13, "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    :goto_4
    if-eqz v13, :cond_6

    .line 1515
    iget-object v14, v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v14

    .line 1516
    .local v14, "n":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v3, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget v6, v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    invoke-virtual {v8, v15, v3, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;I)Z

    move-result v3

    .line 1517
    .local v3, "change":Z
    if-eqz v3, :cond_5

    iget-object v6, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-nez v6, :cond_5

    .line 1520
    iput-object v10, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1521
    move-object v10, v14

    .line 1523
    :cond_5
    iget-object v13, v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1524
    .end local v3    # "change":Z
    .end local v14    # "n":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/4 v3, 0x0

    const/high16 v6, 0x1700000

    goto :goto_4

    .line 1525
    .end local v11    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v12    # "blockMax":I
    .end local v13    # "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    :cond_6
    const/4 v3, 0x0

    const/high16 v6, 0x1700000

    goto :goto_3

    .line 1528
    :cond_7
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1529
    .local v3, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_5
    const/4 v6, 0x0

    if-eqz v3, :cond_d

    .line 1530
    iget-object v8, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    .line 1531
    iget v11, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_8

    .line 1532
    invoke-direct {v0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;)V

    .line 1534
    :cond_8
    iget v11, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v11, v11, 0x40

    if-nez v11, :cond_c

    .line 1536
    iget-object v11, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1537
    .local v11, "k":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget v12, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    .line 1538
    .local v12, "start":I
    if-nez v11, :cond_9

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v13, v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    goto :goto_6

    :cond_9
    iget v13, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->position:I

    :goto_6
    sub-int/2addr v13, v5

    .line 1540
    .local v13, "end":I
    if-lt v13, v12, :cond_b

    .line 1541
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1543
    move v14, v12

    .local v14, "i":I
    :goto_7
    if-ge v14, v13, :cond_a

    .line 1544
    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v15, v15, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    aput-byte v6, v15, v14

    .line 1543
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1546
    .end local v14    # "i":I
    :cond_a
    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v14, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    const/16 v15, -0x41

    aput-byte v15, v14, v13

    .line 1548
    invoke-direct {v0, v12, v6, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->startFrame(III)I

    move-result v6

    .line 1549
    .local v6, "frameIndex":I
    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->frame:[I

    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 1550
    invoke-virtual {v15, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v15

    const/high16 v16, 0x1700000

    or-int v15, v15, v16

    aput v15, v14, v6

    .line 1551
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->endFrame()V

    .line 1554
    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    invoke-static {v14, v3, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->remove(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    move-result-object v14

    iput-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    goto :goto_8

    .line 1540
    .end local v6    # "frameIndex":I
    :cond_b
    const/high16 v16, 0x1700000

    goto :goto_8

    .line 1534
    .end local v11    # "k":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v12    # "start":I
    .end local v13    # "end":I
    :cond_c
    const/high16 v16, 0x1700000

    .line 1557
    :goto_8
    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_5

    .line 1560
    :cond_d
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1561
    iput v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    .line 1562
    :goto_9
    if-eqz v2, :cond_e

    .line 1563
    iget v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    add-int/2addr v4, v5

    iput v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    .line 1564
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    goto :goto_9

    .line 1567
    :cond_e
    iput v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    .line 1568
    .end local v2    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    .end local v3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v8    # "f":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;
    .end local v9    # "max":I
    .end local v10    # "changed":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v2, p2

    goto/16 :goto_14

    :cond_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 1570
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1571
    .restart local v2    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    :goto_a
    const v3, 0x7fffffff

    if-eqz v2, :cond_12

    .line 1572
    iget-object v6, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1573
    .local v6, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v7, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1574
    .local v7, "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v8, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1576
    .local v8, "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_b
    if-eq v6, v8, :cond_11

    .line 1578
    new-instance v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    invoke-direct {v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;-><init>()V

    .line 1579
    .local v9, "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    iput v3, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    .line 1580
    iput-object v7, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1582
    iget v10, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_10

    .line 1583
    iget-object v10, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iput-object v10, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1584
    iput-object v9, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    goto :goto_c

    .line 1589
    :cond_10
    iget-object v10, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iput-object v10, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1590
    iget-object v10, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iput-object v9, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1593
    :goto_c
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1594
    .end local v9    # "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    goto :goto_b

    .line 1595
    :cond_11
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1596
    .end local v6    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v7    # "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v8    # "e":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_a

    .line 1598
    :cond_12
    iget v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->subroutines:I

    if-lez v6, :cond_18

    .line 1605
    const/4 v7, 0x0

    .line 1606
    .local v7, "id":I
    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const-wide/16 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v9, v10, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;JI)V

    .line 1608
    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1609
    .restart local v6    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_d
    if-eqz v6, :cond_15

    .line 1610
    iget v8, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_14

    .line 1612
    iget-object v8, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1614
    .local v8, "subroutine":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget v11, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v11, v11, 0x400

    if-nez v11, :cond_13

    .line 1616
    add-int/lit8 v7, v7, 0x1

    .line 1617
    int-to-long v11, v7

    const-wide/16 v13, 0x20

    div-long/2addr v11, v13

    shl-long/2addr v11, v4

    rem-int/lit8 v13, v7, 0x20

    shl-long v13, v9, v13

    or-long/2addr v11, v13

    iget v13, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->subroutines:I

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v11, v12, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;JI)V

    goto :goto_e

    .line 1614
    :cond_13
    const/4 v14, 0x0

    goto :goto_e

    .line 1610
    .end local v8    # "subroutine":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_14
    const/4 v14, 0x0

    .line 1621
    :goto_e
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_d

    .line 1624
    :cond_15
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1625
    .end local v6    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v4, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_f
    if-eqz v4, :cond_18

    .line 1626
    iget v6, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_17

    .line 1627
    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1628
    .local v6, "L":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_10
    if-eqz v6, :cond_16

    .line 1629
    iget v8, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v8, v8, -0x801

    iput v8, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1630
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_10

    .line 1633
    :cond_16
    iget-object v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1634
    .restart local v8    # "subroutine":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const-wide/16 v9, 0x0

    iget v11, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->subroutines:I

    invoke-virtual {v8, v4, v9, v10, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;JI)V

    .line 1636
    .end local v6    # "L":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v8    # "subroutine":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_17
    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_f

    .line 1650
    .end local v4    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v7    # "id":I
    :cond_18
    const/4 v4, 0x0

    .line 1651
    .local v4, "max":I
    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1652
    .local v6, "stack":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_11
    if-eqz v6, :cond_1e

    .line 1654
    move-object v7, v6

    .line 1655
    .local v7, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1657
    iget v8, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->inputStackTop:I

    .line 1658
    .local v8, "start":I
    iget v9, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->outputStackMax:I

    add-int/2addr v9, v8

    .line 1660
    .local v9, "blockMax":I
    if-le v9, v4, :cond_19

    .line 1661
    move v4, v9

    .line 1664
    :cond_19
    iget-object v10, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1665
    .local v10, "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    iget v11, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_1a

    .line 1667
    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    .line 1669
    :cond_1a
    :goto_12
    if-eqz v10, :cond_1d

    .line 1670
    iget-object v7, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1672
    iget v11, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_1c

    .line 1674
    iget v11, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    if-ne v11, v3, :cond_1b

    const/4 v11, 0x1

    goto :goto_13

    :cond_1b
    iget v11, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->info:I

    add-int/2addr v11, v8

    :goto_13
    iput v11, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->inputStackTop:I

    .line 1677
    iget v11, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1678
    iput-object v6, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1679
    move-object v6, v7

    .line 1681
    :cond_1c
    iget-object v10, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;

    goto :goto_12

    .line 1683
    .end local v7    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v8    # "start":I
    .end local v9    # "blockMax":I
    .end local v10    # "b":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Edge;
    :cond_1d
    goto :goto_11

    .line 1684
    :cond_1e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    .line 1685
    .end local v2    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    .end local v4    # "max":I
    .end local v6    # "stack":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v2, p2

    goto :goto_14

    .line 1686
    :cond_1f
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStack:I

    .line 1687
    move/from16 v2, p2

    iput v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 1689
    :goto_14
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 912
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 913
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 914
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 916
    .local v1, "argSize":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 917
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 928
    :cond_0
    if-nez v1, :cond_1

    .line 931
    invoke-static {p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 934
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 937
    :cond_1
    const/16 v2, 0xb8

    if-ne p1, v2, :cond_2

    .line 938
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    and-int/lit8 v4, v1, 0x3

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    .local v2, "size":I
    goto :goto_0

    .line 940
    .end local v2    # "size":I
    :cond_2
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    and-int/lit8 v4, v1, 0x3

    add-int/2addr v2, v4

    .line 943
    .restart local v2    # "size":I
    :goto_0
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v2, v4, :cond_3

    .line 944
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 946
    :cond_3
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_2

    .line 918
    .end local v2    # "size":I
    :cond_4
    :goto_1
    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v2, p1, v3, v4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 950
    :cond_5
    :goto_2
    const/16 v2, 0xb9

    if-ne p1, v2, :cond_7

    .line 951
    if-nez v1, :cond_6

    .line 952
    invoke-static {p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 953
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 955
    :cond_6
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v4, v2, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    shr-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_3

    .line 957
    :cond_7
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v2, p1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 959
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 1293
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1294
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1296
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/16 v2, 0xc5

    if-eqz v1, :cond_2

    .line 1297
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    rsub-int/lit8 v3, p2, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 1298
    :cond_1
    :goto_0
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, v2, p2, v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1306
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1307
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 506
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 509
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParametersCount:I

    .line 510
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    .line 511
    invoke-virtual {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 512
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 572
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 573
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    const-string v1, "Ljava/lang/Synthetic;"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->synthetics:I

    .line 577
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    return-object v7

    .line 580
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 581
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 582
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p3, :cond_2

    .line 583
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-nez v2, :cond_1

    .line 584
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 586
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 587
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aput-object v1, v2, p1

    goto :goto_0

    .line 589
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-nez v2, :cond_3

    .line 590
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 592
    :cond_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 593
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    aput-object v1, v2, p1

    .line 595
    :goto_0
    return-object v1
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1233
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 1235
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    .line 1236
    .local v0, "source":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1237
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1238
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p3, p0, v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    .line 1239
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_0

    .line 1241
    aget-object v3, p4, v1

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;IZ)V

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1245
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1357
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 1359
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 1361
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1362
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 1364
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1365
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1366
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1369
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 1371
    :goto_0
    return-object v1
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 1336
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    .line 1337
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;-><init>()V

    .line 1338
    .local v0, "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1339
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1340
    iput-object p3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1341
    iput-object p4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->desc:Ljava/lang/String;

    .line 1342
    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->type:I

    .line 1343
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    if-nez v1, :cond_1

    .line 1344
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    goto :goto_1

    .line 1346
    :cond_1
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1348
    :goto_1
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastHandler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handler;

    .line 1349
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 549
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 551
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 553
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 554
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 556
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 557
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 558
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 560
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 561
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 563
    :goto_0
    return-object v1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 851
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 853
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-eqz v1, :cond_3

    .line 854
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_3

    .line 859
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    add-int/2addr v1, v3

    .line 860
    .local v1, "size":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v1, v2, :cond_1

    .line 861
    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 863
    :cond_1
    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 855
    .end local v1    # "size":I
    :cond_2
    :goto_0
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 867
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 868
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 791
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->lastCodeOffset:I

    .line 793
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    const/16 v1, 0xa9

    const/16 v2, 0x100

    if-eqz v0, :cond_4

    .line 794
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    if-ne p1, v1, :cond_1

    .line 800
    iget v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    or-int/2addr v3, v2

    iput v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 803
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    iput v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->inputStackTop:I

    .line 804
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->noSuccessor()V

    goto :goto_1

    .line 806
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->SIZE:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 807
    .local v0, "size":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    if-le v0, v3, :cond_2

    .line 808
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxStackSize:I

    .line 810
    :cond_2
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 795
    .end local v0    # "size":I
    :cond_3
    :goto_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 814
    :cond_4
    :goto_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    .line 817
    const/16 v0, 0x16

    if-eq p1, v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x37

    if-eq p1, v0, :cond_6

    const/16 v0, 0x39

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 821
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .local v0, "n":I
    goto :goto_3

    .line 819
    .end local v0    # "n":I
    :cond_6
    :goto_2
    add-int/lit8 v0, p2, 0x2

    .line 823
    .restart local v0    # "n":I
    :goto_3
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    if-le v0, v3, :cond_7

    .line 824
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->maxLocals:I

    .line 828
    .end local v0    # "n":I
    :cond_7
    const/4 v0, 0x4

    const/16 v3, 0x36

    if-ge p2, v0, :cond_9

    if-eq p1, v1, :cond_9

    .line 830
    if-ge p1, v3, :cond_8

    .line 832
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .local v0, "opt":I
    goto :goto_4

    .line 835
    .end local v0    # "opt":I
    :cond_8
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    .line 837
    .restart local v0    # "opt":I
    :goto_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 838
    .end local v0    # "opt":I
    goto :goto_5

    :cond_9
    if-lt p2, v2, :cond_a

    .line 839
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_5

    .line 841
    :cond_a
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 843
    :goto_5
    if-lt p1, v3, :cond_b

    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->compute:I

    if-nez v0, :cond_b

    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->handlerCount:I

    if-lez v0, :cond_b

    .line 844
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 846
    :cond_b
    return-void
.end method
