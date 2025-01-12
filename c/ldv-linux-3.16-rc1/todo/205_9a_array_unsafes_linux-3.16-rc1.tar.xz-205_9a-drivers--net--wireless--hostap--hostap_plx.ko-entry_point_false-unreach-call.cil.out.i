extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned char u_char;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_1016_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1031_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_1032_8 {
   struct __anonstruct_ldv_1016_9 ldv_1016 ;
   struct __anonstruct_ldv_1031_10 ldv_1031 ;
};
struct desc_struct {
   union __anonunion_ldv_1032_8 ldv_1032 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1452_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1452_15 ldv_1452 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2821_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2821_16 ldv_2821 ;
};
struct exec_domain;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2969_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2969_20 ldv_2969 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5280_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5286_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5287_24 {
   struct __anonstruct_ldv_5280_25 ldv_5280 ;
   struct __anonstruct_ldv_5286_26 ldv_5286 ;
};
union __anonunion_ldv_5296_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5287_24 ldv_5287 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5296_27 ldv_5296 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6337_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6338_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6337_31 ldv_6337 ;
};
struct spinlock {
   union __anonunion_ldv_6338_30 ldv_6338 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct optimistic_spin_queue;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct vm_area_struct;
struct inode;
struct notifier_block;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_98 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_98 nodemask_t;
struct pci_bus;
struct __anonstruct_mm_context_t_99 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_99 mm_context_t;
struct bio_vec;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct_ldv_12057_131 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_12061_132 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_12062_130 {
   struct __anonstruct_ldv_12057_131 ldv_12057 ;
   struct __anonstruct_ldv_12061_132 ldv_12061 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_12062_130 ldv_12062 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_12171_133 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_12177_135 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_12187_139 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_12189_138 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12187_139 ldv_12187 ;
   int units ;
};
struct __anonstruct_ldv_12191_137 {
   union __anonunion_ldv_12189_138 ldv_12189 ;
   atomic_t _count ;
};
union __anonunion_ldv_12193_136 {
   unsigned long counters ;
   struct __anonstruct_ldv_12191_137 ldv_12191 ;
   unsigned int active ;
};
struct __anonstruct_ldv_12194_134 {
   union __anonunion_ldv_12177_135 ldv_12177 ;
   union __anonunion_ldv_12193_136 ldv_12193 ;
};
struct __anonstruct_ldv_12201_141 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_12206_140 {
   struct list_head lru ;
   struct __anonstruct_ldv_12201_141 ldv_12201 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_12212_142 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_12171_133 ldv_12171 ;
   struct __anonstruct_ldv_12194_134 ldv_12194 ;
   union __anonunion_ldv_12206_140 ldv_12206 ;
   union __anonunion_ldv_12212_142 ldv_12212 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_144 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_143 {
   struct __anonstruct_linear_144 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_143 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_12542_145 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_12542_145 ldv_12542 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct sock;
struct kiocb;
struct ctl_table;
struct mem_cgroup;
union __anonunion_ldv_13925_146 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_13925_146 ldv_13925 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14069_147 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14069_147 ldv_14069 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct user_namespace;
struct __anonstruct_kuid_t_148 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_148 kuid_t;
struct __anonstruct_kgid_t_149 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_149 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_14961_151 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_14967_152 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_14968_150 {
   struct __anonstruct_ldv_14961_151 ldv_14961 ;
   struct __anonstruct_ldv_14967_152 ldv_14967 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14968_150 ldv_14968 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_155 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_155 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_158 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_161 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_162 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_163 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_156 {
   int _pad[28U] ;
   struct __anonstruct__kill_157 _kill ;
   struct __anonstruct__timer_158 _timer ;
   struct __anonstruct__rt_159 _rt ;
   struct __anonstruct__sigchld_160 _sigchld ;
   struct __anonstruct__sigfault_161 _sigfault ;
   struct __anonstruct__sigpoll_162 _sigpoll ;
   struct __anonstruct__sigsys_163 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_156 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_22938_167 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_22940_166 {
   struct __anonstruct_ldv_22938_167 ldv_22938 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_22940_166 ldv_22940 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_23084_168 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_23092_169 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_23105_171 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_23106_170 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_23105_171 ldv_23105 ;
};
union __anonunion_type_data_172 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_23121_173 {
   union __anonunion_payload_174 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_23084_168 ldv_23084 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_23092_169 ldv_23092 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_23106_170 ldv_23106 ;
   union __anonunion_type_data_172 type_data ;
   union __anonunion_ldv_23121_173 ldv_23121 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_24870_179 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_24871_178 {
   u64 v64 ;
   struct __anonstruct_ldv_24870_179 ldv_24870 ;
};
struct skb_mstamp {
   union __anonunion_ldv_24871_178 ldv_24871 ;
};
union __anonunion_ldv_24890_180 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_24906_182 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_24907_181 {
   __wsum csum ;
   struct __anonstruct_ldv_24906_182 ldv_24906 ;
};
union __anonunion_ldv_24946_183 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_24952_184 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_24890_180 ldv_24890 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_24907_181 ldv_24907 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_24946_183 ldv_24946 ;
   __u32 secmark ;
   union __anonunion_ldv_24952_184 ldv_24952 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_26738_189 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_26738_189 ldv_26738 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct __anonstruct_sync_serial_settings_190 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_190 sync_serial_settings;
struct __anonstruct_te1_settings_191 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_191 te1_settings;
struct __anonstruct_raw_hdlc_proto_192 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_192 raw_hdlc_proto;
struct __anonstruct_fr_proto_193 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_193 fr_proto;
struct __anonstruct_fr_proto_pvc_194 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_194 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_195 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_195 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_196 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_196 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_197 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_197 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_198 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_199 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_198 ifr_ifrn ;
   union __anonunion_ifr_ifru_199 ifr_ifru ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_201 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_201 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_27586_203 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_27587_202 {
   struct __anonstruct_ldv_27586_203 ldv_27586 ;
};
struct lockref {
   union __anonunion_ldv_27587_202 ldv_27587 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_27610_205 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_27612_204 {
   struct __anonstruct_ldv_27610_205 ldv_27610 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_27612_204 ldv_27612 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_206 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_206 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_27973_208 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_27975_207 {
   struct __anonstruct_ldv_27973_208 ldv_27973 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_27975_207 ldv_27975 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_209 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_209 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_28500_210 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_28500_210 ldv_28500 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_28914_213 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_28934_214 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_28951_215 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_28914_213 ldv_28914 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_28934_214 ldv_28934 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_28951_215 ldv_28951 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_216 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_216 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct __anonstruct_afs_218 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_217 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_218 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_217 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
   u16 max_dsize ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *base_cftypes ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_246 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_247 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_40094_248 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_246 adj_list ;
   struct __anonstruct_all_adj_list_247 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_40094_248 ldv_40094 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct iw_param {
   __s32 value ;
   __u8 fixed ;
   __u8 disabled ;
   __u16 flags ;
};
struct iw_point {
   void *pointer ;
   __u16 length ;
   __u16 flags ;
};
struct iw_freq {
   __s32 m ;
   __s16 e ;
   __u8 i ;
   __u8 flags ;
};
struct iw_quality {
   __u8 qual ;
   __u8 level ;
   __u8 noise ;
   __u8 updated ;
};
struct iw_discarded {
   __u32 nwid ;
   __u32 code ;
   __u32 fragment ;
   __u32 retries ;
   __u32 misc ;
};
struct iw_missed {
   __u32 beacon ;
};
struct iw_statistics {
   __u16 status ;
   struct iw_quality qual ;
   struct iw_discarded discard ;
   struct iw_missed miss ;
};
union iwreq_data {
   char name[16U] ;
   struct iw_point essid ;
   struct iw_param nwid ;
   struct iw_freq freq ;
   struct iw_param sens ;
   struct iw_param bitrate ;
   struct iw_param txpower ;
   struct iw_param rts ;
   struct iw_param frag ;
   __u32 mode ;
   struct iw_param retry ;
   struct iw_point encoding ;
   struct iw_param power ;
   struct iw_quality qual ;
   struct sockaddr ap_addr ;
   struct sockaddr addr ;
   struct iw_param param ;
   struct iw_point data ;
};
struct iw_priv_args {
   __u32 cmd ;
   __u16 set_args ;
   __u16 get_args ;
   char name[16U] ;
};
struct iw_request_info {
   __u16 cmd ;
   __u16 flags ;
};
typedef int (*iw_handler)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                          char * );
struct iw_handler_def {
   iw_handler (* const *standard)(struct net_device * , struct iw_request_info * ,
                                   union iwreq_data * , char * ) ;
   __u16 num_standard ;
   __u16 num_private ;
   __u16 num_private_args ;
   iw_handler (* const *private)(struct net_device * , struct iw_request_info * ,
                                  union iwreq_data * , char * ) ;
   struct iw_priv_args const *private_args ;
   struct iw_statistics *(*get_wireless_stats)(struct net_device * ) ;
};
struct iw_spy_data {
   int spy_number ;
   u_char spy_address[8U][6U] ;
   struct iw_quality spy_stat[8U] ;
   struct iw_quality spy_thr_low ;
   struct iw_quality spy_thr_high ;
   u_char spy_thr_under[8U] ;
};
struct libipw_device;
struct iw_public_data {
   struct iw_spy_data *spy_data ;
   struct libipw_device *libipw ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion_ldv_42201_253 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_42201_253 ldv_42201 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct lib80211_crypto_ops {
   char const *name ;
   struct list_head list ;
   void *(*init)(int ) ;
   void (*deinit)(void * ) ;
   int (*encrypt_mpdu)(struct sk_buff * , int , void * ) ;
   int (*decrypt_mpdu)(struct sk_buff * , int , void * ) ;
   int (*encrypt_msdu)(struct sk_buff * , int , void * ) ;
   int (*decrypt_msdu)(struct sk_buff * , int , int , void * ) ;
   int (*set_key)(void * , int , u8 * , void * ) ;
   int (*get_key)(void * , int , u8 * , void * ) ;
   void (*print_stats)(struct seq_file * , void * ) ;
   unsigned long (*get_flags)(void * ) ;
   unsigned long (*set_flags)(unsigned long , void * ) ;
   int extra_mpdu_prefix_len ;
   int extra_mpdu_postfix_len ;
   int extra_msdu_prefix_len ;
   int extra_msdu_postfix_len ;
   struct module *owner ;
};
struct lib80211_crypt_data {
   struct list_head list ;
   struct lib80211_crypto_ops *ops ;
   void *priv ;
   atomic_t refcnt ;
};
struct lib80211_crypt_info {
   char *name ;
   spinlock_t *lock ;
   struct lib80211_crypt_data *crypt[4U] ;
   int tx_keyidx ;
   struct list_head crypt_deinit_list ;
   struct timer_list crypt_deinit_timer ;
   int crypt_quiesced ;
};
struct hfa384x_comp_ident {
   __le16 id ;
   __le16 variant ;
   __le16 major ;
   __le16 minor ;
};
struct prism2_download_area {
   u32 addr ;
   u32 len ;
   void *ptr ;
};
struct prism2_download_param {
   u32 dl_cmd ;
   u32 start_addr ;
   u32 num_areas ;
   struct prism2_download_area data[0U] ;
};
struct hfa384x_rx_frame {
   __le16 status ;
   __le32 time ;
   u8 silence ;
   u8 signal ;
   u8 rate ;
   u8 rxflow ;
   __le32 reserved ;
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
   __le16 data_len ;
   u8 dst_addr[6U] ;
   u8 src_addr[6U] ;
   __be16 len ;
};
struct hfa384x_tx_frame {
   __le16 status ;
   __le16 reserved1 ;
   __le16 reserved2 ;
   __le32 sw_support ;
   u8 retry_count ;
   u8 tx_rate ;
   __le16 tx_control ;
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
   __le16 data_len ;
   u8 dst_addr[6U] ;
   u8 src_addr[6U] ;
   __be16 len ;
};
struct hfa384x_rid_hdr {
   __le16 len ;
   __le16 rid ;
};
struct hfa384x_info_frame {
   __le16 len ;
   __le16 type ;
};
struct hfa384x_hostscan_result {
   __le16 chid ;
   __le16 anl ;
   __le16 sl ;
   u8 bssid[6U] ;
   __le16 beacon_interval ;
   __le16 capability ;
   __le16 ssid_len ;
   u8 ssid[32U] ;
   u8 sup_rates[10U] ;
   __le16 rate ;
   __le16 atim ;
};
struct comm_tallies_sums {
   unsigned int tx_unicast_frames ;
   unsigned int tx_multicast_frames ;
   unsigned int tx_fragments ;
   unsigned int tx_unicast_octets ;
   unsigned int tx_multicast_octets ;
   unsigned int tx_deferred_transmissions ;
   unsigned int tx_single_retry_frames ;
   unsigned int tx_multiple_retry_frames ;
   unsigned int tx_retry_limit_exceeded ;
   unsigned int tx_discards ;
   unsigned int rx_unicast_frames ;
   unsigned int rx_multicast_frames ;
   unsigned int rx_fragments ;
   unsigned int rx_unicast_octets ;
   unsigned int rx_multicast_octets ;
   unsigned int rx_fcs_errors ;
   unsigned int rx_discards_no_buffer ;
   unsigned int tx_discards_wrong_sa ;
   unsigned int rx_discards_wep_undecryptable ;
   unsigned int rx_message_in_msg_fragments ;
   unsigned int rx_message_in_bad_msg_fragments ;
};
struct hfa384x_regs {
   u16 cmd ;
   u16 evstat ;
   u16 offset0 ;
   u16 offset1 ;
   u16 swsupport0 ;
};
struct hostap_tx_callback_info {
   u16 idx ;
   void (*func)(struct sk_buff * , int , void * ) ;
   void *data ;
   struct hostap_tx_callback_info *next ;
};
struct prism2_frag_entry {
   unsigned long first_frag_time ;
   unsigned int seq ;
   unsigned int last_frag ;
   struct sk_buff *skb ;
   u8 src_addr[6U] ;
   u8 dst_addr[6U] ;
};
enum ldv_31986 { CMD_SLEEP, CMD_CALLBACK, CMD_COMPLETED } ;
struct hostap_cmd_queue {
   struct list_head list ;
   wait_queue_head_t compl ;
   enum ldv_31986 volatile type ;
   void (*callback)(struct net_device * , long , u16 , u16 ) ;
   long context ;
   u16 cmd ;
   u16 param0 ;
   u16 param1 ;
   u16 resp0 ;
   u16 res ;
   int volatile issued ;
   int volatile issuing ;
   atomic_t usecnt ;
   int del_req ;
};
struct local_info;
typedef struct local_info local_info_t;
enum ldv_32038 {
    HOSTAP_HW_PCCARD = 0,
    HOSTAP_HW_PLX = 1,
    HOSTAP_HW_PCI = 2
} ;
struct prism2_helper_functions {
   int (*card_present)(local_info_t * ) ;
   void (*cor_sreset)(local_info_t * ) ;
   void (*genesis_reset)(local_info_t * , int ) ;
   int (*cmd)(struct net_device * , u16 , u16 , u16 * , u16 * ) ;
   void (*read_regs)(struct net_device * , struct hfa384x_regs * ) ;
   int (*get_rid)(struct net_device * , u16 , void * , int , int ) ;
   int (*set_rid)(struct net_device * , u16 , void * , int ) ;
   int (*hw_enable)(struct net_device * , int ) ;
   int (*hw_config)(struct net_device * , int ) ;
   void (*hw_reset)(struct net_device * ) ;
   void (*hw_shutdown)(struct net_device * , int ) ;
   int (*reset_port)(struct net_device * ) ;
   void (*schedule_reset)(local_info_t * ) ;
   int (*download)(local_info_t * , struct prism2_download_param * ) ;
   int (*tx)(struct sk_buff * , struct net_device * ) ;
   int (*set_tim)(struct net_device * , int , int ) ;
   struct file_operations const *read_aux_fops ;
   int need_tx_headroom ;
   enum ldv_32038 hw_type ;
};
struct prism2_download_data_area {
   u32 addr ;
   u32 len ;
   u8 *data ;
};
struct prism2_download_data {
   u32 dl_cmd ;
   u32 start_addr ;
   u32 num_areas ;
   struct prism2_download_data_area data[0U] ;
};
struct hostap_bss_info {
   struct list_head list ;
   unsigned long last_update ;
   unsigned int count ;
   u8 bssid[6U] ;
   u16 capab_info ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   u8 wpa_ie[64U] ;
   size_t wpa_ie_len ;
   u8 rsn_ie[64U] ;
   size_t rsn_ie_len ;
   int chan ;
   int included ;
};
enum ldv_32068 {
    PRISM2_TXPOWER_AUTO = 0,
    PRISM2_TXPOWER_OFF = 1,
    PRISM2_TXPOWER_FIXED = 2,
    PRISM2_TXPOWER_UNKNOWN = 3
} ;
enum ldv_32069 {
    PRISM2_MONITOR_80211 = 0,
    PRISM2_MONITOR_PRISM = 1,
    PRISM2_MONITOR_CAPHDR = 2,
    PRISM2_MONITOR_RADIOTAP = 3
} ;
enum ldv_32077 {
    PRISM2_SCAN = 0,
    PRISM2_HOSTSCAN = 1
} ;
enum ldv_32080 {
    PASSIVE_SCAN_WAIT = 0,
    PASSIVE_SCAN_LISTEN = 1
} ;
struct ap_data;
struct local_info {
   struct module *hw_module ;
   int card_idx ;
   int dev_enabled ;
   int master_dev_auto_open ;
   int num_dev_open ;
   struct net_device *dev ;
   struct net_device *ddev ;
   struct list_head hostap_interfaces ;
   rwlock_t iface_lock ;
   spinlock_t cmdlock ;
   spinlock_t baplock ;
   spinlock_t lock ;
   spinlock_t irq_init_lock ;
   struct mutex rid_bap_mtx ;
   u16 infofid ;
   spinlock_t txfidlock ;
   int txfid_len ;
   u16 txfid[8U] ;
   u16 intransmitfid[8U] ;
   int next_txfid ;
   int next_alloc ;
   unsigned long bits ;
   struct ap_data *ap ;
   char essid[33U] ;
   char name[33U] ;
   int name_set ;
   u16 channel_mask ;
   u16 scan_channel_mask ;
   struct comm_tallies_sums comm_tallies ;
   struct proc_dir_entry *proc ;
   int iw_mode ;
   int pseudo_adhoc ;
   char bssid[6U] ;
   int channel ;
   int beacon_int ;
   int dtim_period ;
   int mtu ;
   int frame_dump ;
   int fw_tx_rate_control ;
   u16 tx_rate_control ;
   u16 basic_rates ;
   int hw_resetting ;
   int hw_ready ;
   int hw_reset_tries ;
   int hw_downloading ;
   int shutdown ;
   int pri_only ;
   int no_pri ;
   int sram_type ;
   enum ldv_32068 txpower_type ;
   int txpower ;
   struct list_head cmd_queue ;
   int cmd_queue_len ;
   struct work_struct reset_queue ;
   int is_promisc ;
   struct work_struct set_multicast_list_queue ;
   struct work_struct set_tim_queue ;
   struct list_head set_tim_list ;
   spinlock_t set_tim_lock ;
   int wds_max_connections ;
   int wds_connections ;
   u32 wds_type ;
   u16 tx_control ;
   int manual_retry_count ;
   struct iw_statistics wstats ;
   unsigned long scan_timestamp ;
   enum ldv_32069 monitor_type ;
   int monitor_allow_fcserr ;
   int hostapd ;
   int hostapd_sta ;
   struct net_device *apdev ;
   struct net_device_stats apdevstats ;
   char assoc_ap_addr[6U] ;
   struct net_device *stadev ;
   struct net_device_stats stadevstats ;
   struct lib80211_crypt_info crypt_info ;
   int open_wep ;
   int host_encrypt ;
   int host_decrypt ;
   int privacy_invoked ;
   int fw_encrypt_ok ;
   int bcrx_sta_key ;
   struct prism2_frag_entry frag_cache[4U] ;
   unsigned int frag_next_idx ;
   int ieee_802_1x ;
   int antsel_tx ;
   int antsel_rx ;
   int rts_threshold ;
   int fragm_threshold ;
   int auth_algs ;
   int enh_sec ;
   int tallies32 ;
   struct prism2_helper_functions *func ;
   u8 *pda ;
   int fw_ap ;
   u32 sta_fw_ver ;
   struct tasklet_struct bap_tasklet ;
   struct tasklet_struct info_tasklet ;
   struct sk_buff_head info_list ;
   struct hostap_tx_callback_info *tx_callback ;
   struct tasklet_struct rx_tasklet ;
   struct sk_buff_head rx_list ;
   struct tasklet_struct sta_tx_exc_tasklet ;
   struct sk_buff_head sta_tx_exc_list ;
   int host_roaming ;
   unsigned long last_join_time ;
   struct hfa384x_hostscan_result *last_scan_results ;
   int last_scan_results_count ;
   enum ldv_32077 last_scan_type ;
   struct work_struct info_queue ;
   unsigned long pending_info ;
   int prev_link_status ;
   int prev_linkstatus_connected ;
   u8 preferred_ap[6U] ;
   wait_queue_head_t hostscan_wq ;
   struct timer_list passive_scan_timer ;
   int passive_scan_interval ;
   int passive_scan_channel ;
   enum ldv_32080 passive_scan_state ;
   struct timer_list tick_timer ;
   unsigned long last_tick_timer ;
   unsigned int sw_tick_stuck ;
   unsigned long last_comms_qual_update ;
   int comms_qual ;
   int avg_signal ;
   int avg_noise ;
   struct work_struct comms_qual_update ;
   int rssi_to_dBm ;
   struct list_head bss_list ;
   int num_bss_info ;
   int wpa ;
   int tkip_countermeasures ;
   int drop_unencrypted ;
   u8 *generic_elem ;
   size_t generic_elem_len ;
   struct prism2_download_data *dl_pri ;
   struct prism2_download_data *dl_sec ;
   void *hw_priv ;
};
enum ldv_32083 {
    HOSTAP_INTERFACE_MASTER = 0,
    HOSTAP_INTERFACE_MAIN = 1,
    HOSTAP_INTERFACE_AP = 2,
    HOSTAP_INTERFACE_STA = 3,
    HOSTAP_INTERFACE_WDS = 4
} ;
struct hostap_interface_wds {
   u8 remote_addr[6U] ;
};
union __anonunion_u_299 {
   struct hostap_interface_wds wds ;
};
struct hostap_interface {
   struct list_head list ;
   struct net_device *dev ;
   struct local_info *local ;
   struct net_device_stats stats ;
   struct iw_spy_data spy_data ;
   struct iw_public_data wireless_data ;
   enum ldv_32083 type ;
   union __anonunion_u_299 u ;
};
struct hostap_skb_tx_data {
   unsigned int __padding_for_default_qdiscs ;
   u32 magic ;
   u8 rate ;
   u8 flags ;
   u16 tx_cb_idx ;
   struct hostap_interface *iface ;
   unsigned long jiffies ;
   unsigned short ethertype ;
};
struct hostap_plx_priv {
   void *attr_mem ;
   unsigned int cor_offset ;
};
struct prism2_plx_manfid {
   u16 manfid1 ;
   u16 manfid2 ;
};
struct hostap_80211_rx_status {
   u32 mac_time ;
   u8 signal ;
   u8 noise ;
   u16 rate ;
};
enum ldv_32393 {
    STA_NULLFUNC = 0,
    STA_DISASSOC = 1,
    STA_DEAUTH = 2
} ;
struct __anonstruct_sta_315 {
   char *challenge ;
};
struct __anonstruct_ap_316 {
   int ssid_len ;
   unsigned char ssid[33U] ;
   int channel ;
   unsigned long last_beacon ;
};
union __anonunion_u_314 {
   struct __anonstruct_sta_315 sta ;
   struct __anonstruct_ap_316 ap ;
};
struct sta_info {
   struct list_head list ;
   struct sta_info *hnext ;
   atomic_t users ;
   struct proc_dir_entry *proc ;
   u8 addr[6U] ;
   u16 aid ;
   u32 flags ;
   u16 capability ;
   u16 listen_interval ;
   u8 supported_rates[32U] ;
   unsigned long last_auth ;
   unsigned long last_assoc ;
   unsigned long last_rx ;
   unsigned long last_tx ;
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   struct sk_buff_head tx_buf ;
   s8 last_rx_silence ;
   s8 last_rx_signal ;
   u8 last_rx_rate ;
   u8 last_rx_updated ;
   u8 tx_supp_rates ;
   u8 tx_rate ;
   u8 tx_rate_idx ;
   u8 tx_max_rate ;
   u32 tx_count[4U] ;
   u32 rx_count[4U] ;
   u32 tx_since_last_failure ;
   u32 tx_consecutive_exc ;
   struct lib80211_crypt_data *crypt ;
   int ap ;
   local_info_t *local ;
   union __anonunion_u_314 u ;
   struct timer_list timer ;
   enum ldv_32393 timeout_next ;
};
enum ldv_32394 {
    AP_OTHER_AP_SKIP_ALL = 0,
    AP_OTHER_AP_SAME_SSID = 1,
    AP_OTHER_AP_ALL = 2,
    AP_OTHER_AP_EVEN_IBSS = 3
} ;
typedef enum ldv_32394 ap_policy_enum;
enum ldv_32400 {
    MAC_POLICY_OPEN = 0,
    MAC_POLICY_ALLOW = 1,
    MAC_POLICY_DENY = 2
} ;
struct mac_restrictions {
   enum ldv_32400 policy ;
   unsigned int entries ;
   struct list_head mac_list ;
   spinlock_t lock ;
};
struct add_sta_proc_data {
   u8 addr[6U] ;
   struct add_sta_proc_data *next ;
};
enum ldv_32405 {
    WDS_ADD = 0,
    WDS_DEL = 1
} ;
typedef enum ldv_32405 wds_oper_type;
struct wds_oper_data {
   wds_oper_type type ;
   u8 addr[6U] ;
   struct wds_oper_data *next ;
};
struct ap_data {
   int initialized ;
   local_info_t *local ;
   int bridge_packets ;
   unsigned int bridged_unicast ;
   unsigned int bridged_multicast ;
   unsigned int tx_drop_nonassoc ;
   int nullfunc_ack ;
   spinlock_t sta_table_lock ;
   int num_sta ;
   struct list_head sta_list ;
   struct sta_info *sta_hash[256U] ;
   struct proc_dir_entry *proc ;
   ap_policy_enum ap_policy ;
   unsigned int max_inactivity ;
   int autom_ap_wds ;
   struct mac_restrictions mac_restrictions ;
   int last_tx_rate ;
   struct work_struct add_sta_proc_queue ;
   struct add_sta_proc_data *add_sta_proc_entries ;
   struct work_struct wds_oper_queue ;
   struct wds_oper_data *wds_oper_entries ;
   u16 tx_callback_idx ;
   struct sta_info *sta_aid[128U] ;
   u16 tx_callback_auth ;
   u16 tx_callback_assoc ;
   u16 tx_callback_poll ;
   struct lib80211_crypto_ops *crypt ;
   void *crypt_priv ;
};
struct set_tim_data {
   struct list_head list ;
   int aid ;
   int set ;
};
struct prism2_download_aux_dump {
   local_info_t *local ;
   u16 page[128U] ;
};
struct __anonstruct_dlbuffer_318 {
   __le16 page ;
   __le16 offset ;
   __le16 len ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
struct __anonstruct____missing_field_name_257 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_256 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_257 __annonCompField63 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_259 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff___0 {
   struct sk_buff___0 *next ;
   struct sk_buff___0 *prev ;
   union __anonunion_ldv_24890_180 __annonCompField62 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48] __attribute__((__aligned__(8))) ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_256 __annonCompField64 ;
   __u32 priority ;
   __u8 ignore_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff___0 *skb ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_hash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   __u8 encap_hdr_csum : 1 ;
   __u8 csum_valid : 1 ;
   __u8 csum_complete_sw : 1 ;
   union __anonunion____missing_field_name_258 __annonCompField65 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_259 __annonCompField66 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
typedef void *Element;
typedef Element Set;
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3038;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3038;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3038;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3038;
  default:
  __bad_percpu_size();
  }
  ldv_3038: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strstr(char const * , char const * ) ;
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  default:
  __bad_percpu_size();
  }
  ldv_5995: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6338.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6338.rlock, flags);
  return;
}
}
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_19(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_20(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outw(unsigned short value , int port )
{
  {
  __asm__ volatile ("outw %w0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned short inw(int port )
{
  unsigned short value ;
  {
  __asm__ volatile ("inw %w1, %w0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outsw(int port , void const *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; outsw": "+S" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void insw(int port , void *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; insw": "+D" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("outl %0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port )
{
  unsigned int value ;
  {
  __asm__ volatile ("inl %w1, %0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern int net_ratelimit(void) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_write(struct seq_file * , void const * , size_t ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int seq_open_private(struct file * , struct seq_operations const * , int ) ;
extern int seq_release_private(struct inode * , struct file * ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern long schedule_timeout(long ) ;
extern void yield(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 ) ;
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.ldv_6338.rlock, "&(&list->lock)->rlock", & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
struct sk_buff *ldv_skb_dequeue_13(struct sk_buff_head *ldv_func_arg1 ) ;
struct sk_buff *ldv_skb_dequeue_15(struct sk_buff_head *ldv_func_arg1 ) ;
struct sk_buff *ldv_skb_dequeue_17(struct sk_buff_head *ldv_func_arg1 ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
extern void skb_queue_purge(struct sk_buff_head * ) ;
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length ) ;
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length ) ;
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length ) ;
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length ) ;
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = __builtin_memcpy(to, (void const *)skb->data, __len);
  return;
}
}
__inline static void skb_copy_from_linear_data_offset(struct sk_buff const *skb ,
                                                      int const offset , void *to ,
                                                      unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = __builtin_memcpy(to, (void const *)skb->data + (unsigned long )offset,
                           __len);
  return;
}
}
extern struct sk_buff___0 *ldv_skb_alloc(void) ;
extern void ldv_skb_free(struct sk_buff___0 * ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void abort(void); 
void assume_abort_if_not(int cond) { 
  if(!cond) {abort();}
}
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
struct seq_file *prism2_download_aux_dump_proc_seqops_group1 ;
int ldv_state_variable_8 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_1_0 = 0;
struct timer_list *ldv_timer_list_3 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
struct inode *prism2_download_aux_dump_proc_fops_group1 ;
int ldv_state_variable_5 ;
int ldv_timer_state_3 = 0;
struct pci_dev *prism2_plx_driver_group0 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
void *ldv_irq_data_1_2 ;
struct inode *prism2_registers_proc_fops_group1 ;
void *prism2_download_aux_dump_proc_seqops_group2 ;
struct file *prism2_download_aux_dump_proc_fops_group2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
loff_t *prism2_download_aux_dump_proc_seqops_group3 ;
int ldv_timer_state_2 = 0;
int ldv_irq_line_1_3 ;
struct file *prism2_registers_proc_fops_group2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct timer_list *ldv_timer_list_2 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void ldv_file_operations_6(void) ;
void ldv_file_operations_8(void) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void ldv_initialize_pci_driver_4(void) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_3(struct timer_list *timer ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_timer_3(struct timer_list *timer ) ;
void ldv_seq_operations_7(void) ;
void choose_interrupt_1(void) ;
extern void __const_udelay(unsigned long ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_23(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void netdev_for_each_tx_queue(struct net_device *dev , void (*f)(struct net_device * ,
                                                                                 struct netdev_queue * ,
                                                                                 void * ) ,
                                              void *arg )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_40155;
  ldv_40154:
  (*f)(dev, dev->_tx + (unsigned long )i, arg);
  i = i + 1U;
  ldv_40155: ;
  if (dev->num_tx_queues > i) {
    goto ldv_40154;
  } else {
  }
  return;
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
}
}
extern int dev_alloc_name(struct net_device * , char const * ) ;
extern int register_netdevice(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
extern void netif_carrier_off(struct net_device * ) ;
extern void unregister_netdev(struct net_device * ) ;
extern void wireless_send_event(struct net_device * , unsigned int , union iwreq_data * ,
                                char const * ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static int ieee80211_has_tods(__le16 fc )
{
  {
  return (((int )fc & 256) != 0);
}
}
__inline static int ieee80211_has_fromds(__le16 fc )
{
  {
  return (((int )fc & 512) != 0);
}
}
__inline static int ieee80211_has_a4(__le16 fc )
{
  __le16 tmp ;
  {
  tmp = 768U;
  return (((int )fc & (int )tmp) == (int )tmp);
}
}
__inline static int ieee80211_is_mgmt(__le16 fc )
{
  {
  return (((int )fc & 12) == 0);
}
}
__inline static int ieee80211_is_ctl(__le16 fc )
{
  {
  return (((int )fc & 12) == 4);
}
}
__inline static int ieee80211_is_data(__le16 fc )
{
  {
  return (((int )fc & 12) == 8);
}
}
extern int lib80211_crypt_info_init(struct lib80211_crypt_info * , char * , spinlock_t * ) ;
extern void lib80211_crypt_info_free(struct lib80211_crypt_info * ) ;
__inline static void prism2_io_debug_add(struct net_device *dev , int cmd , int reg ,
                                         int value )
{
  {
  return;
}
}
__inline static void prism2_io_debug_error(struct net_device *dev , int err )
{
  {
  return;
}
}
static char *dev_info = (char *)"hostap_plx";
static int ignore_cis ;
static struct pci_device_id const prism2_plx_id_table[15U] =
  { {4279U, 30576U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4378U, 4131U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4716U, 32816U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5474U, 1U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4997U, 16640U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5608U, 304U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5608U, 305U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5688U, 4352U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5803U, 4352U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5803U, 4353U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5803U, 4354U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5803U, 4355U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5868U, 13957U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {60544U, 60416U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static struct prism2_plx_manfid prism2_plx_known_manfids[15U] =
  { {11U, 28944U},
        {11U, 29440U},
        {257U, 1911U},
        {294U, 32768U},
        {312U, 2U},
        {342U, 2U},
        {623U, 779U},
        {628U, 5650U},
        {628U, 5651U},
        {650U, 2U},
        {592U, 2U},
        {49744U, 2U},
        {54785U, 2U},
        {54785U, 5U},
        {0U, 0U}};
static int hfa384x_from_bap(struct net_device *dev , u16 bap , void *buf , int len )
{
  u16 d_off ;
  u16 *pos ;
  unsigned char tmp ;
  {
  d_off = (unsigned int )bap == 1U ? 56U : 54U;
  pos = (u16 *)buf;
  if ((unsigned int )len - 4294967295U > 2U) {
    insw((int )((unsigned int )dev->base_addr + (unsigned int )d_off), buf, (unsigned long )(len / 2));
  } else {
  }
  pos = pos + (unsigned long )(len / 2);
  if (len & 1) {
    tmp = inb((int )((unsigned int )dev->base_addr + (unsigned int )d_off));
    *((char *)pos) = (char )tmp;
  } else {
  }
  return (0);
}
}
static int hfa384x_to_bap(struct net_device *dev , u16 bap , void *buf , int len )
{
  u16 d_off ;
  u16 *pos ;
  {
  d_off = (unsigned int )bap == 1U ? 56U : 54U;
  pos = (u16 *)buf;
  if ((unsigned int )len - 4294967295U > 2U) {
    outsw((int )((unsigned int )dev->base_addr + (unsigned int )d_off), (void const *)buf,
          (unsigned long )(len / 2));
  } else {
  }
  pos = pos + (unsigned long )(len / 2);
  if (len & 1) {
    outb((int )((unsigned char )*((char *)pos)), (int )((unsigned int )dev->base_addr + (unsigned int )d_off));
  } else {
  }
  return (0);
}
}
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
  return;
}
}
__inline static void eth_hw_addr_inherit(struct net_device *dst , struct net_device *src )
{
  {
  dst->addr_assign_type = src->addr_assign_type;
  ether_addr_copy(dst->dev_addr, (u8 const *)src->dev_addr);
  return;
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern void hostap_80211_rx(struct net_device * , struct sk_buff * , struct hostap_80211_rx_status * ) ;
extern void hostap_init_data(local_info_t * ) ;
extern void hostap_init_ap_proc(local_info_t * ) ;
extern void hostap_free_data(struct ap_data * ) ;
extern void hostap_check_sta_fw_version(struct ap_data * , int ) ;
extern void hostap_handle_sta_tx_exc(local_info_t * , struct sk_buff * ) ;
extern int hostap_set_word(struct net_device * , int , u16 ) ;
extern int hostap_set_string(struct net_device * , int , char const * ) ;
extern u16 hostap_get_porttype(local_info_t * ) ;
extern int hostap_set_encryption(local_info_t * ) ;
extern int hostap_set_antsel(local_info_t * ) ;
extern int hostap_set_roaming(local_info_t * ) ;
extern int hostap_set_auth_algs(local_info_t * ) ;
extern void hostap_dump_rx_header(char const * , struct hfa384x_rx_frame const * ) ;
extern void hostap_dump_tx_header(char const * , struct hfa384x_tx_frame const * ) ;
extern struct header_ops const hostap_80211_ops ;
extern int hostap_80211_get_hdrlen(__le16 ) ;
extern void hostap_setup_dev(struct net_device * , local_info_t * , int ) ;
extern void hostap_set_multicast_list_queue(struct work_struct * ) ;
extern int hostap_set_hostapd(local_info_t * , int , int ) ;
extern int hostap_set_hostapd_sta(local_info_t * , int , int ) ;
extern struct net_device *hostap_add_interface(struct local_info * , int , int ,
                                               char const * , char const * ) ;
extern void hostap_remove_interface(struct net_device * , int , int ) ;
extern int prism2_update_comms_qual(struct net_device * ) ;
extern void hostap_init_proc(local_info_t * ) ;
extern void hostap_remove_proc(local_info_t * ) ;
extern void hostap_info_init(local_info_t * ) ;
extern void hostap_info_process(local_info_t * , struct sk_buff * ) ;
static int mtu = 1500;
static int channel[8U] =
  { 3, -1, -1, -1,
        -1, -1, -1, -1};
static char essid[33U] = { 't', 'e', 's', 't',
        '\000'};
static int iw_mode[8U] =
  { 3, -1, -1, -1,
        -1, -1, -1, -1};
static int beacon_int[8U] =
  { 100, -1, -1, -1,
        -1, -1, -1, -1};
static int dtim_period[8U] =
  { 1, -1, -1, -1,
        -1, -1, -1, -1};
static char dev_template[16U] = { 'w', 'l', 'a', 'n',
        '%', 'd', '\000'};
static void prism2_hw_reset(struct net_device *dev ) ;
static void prism2_check_sta_fw_version(local_info_t *local ) ;
static struct file_operations const prism2_download_aux_dump_proc_fops ;
static u8 *prism2_read_pda(struct net_device *dev ) ;
static int prism2_download(local_info_t *local , struct prism2_download_param *param ) ;
static void prism2_download_free_data(struct prism2_download_data *dl ) ;
static int prism2_download_volatile(local_info_t *local , struct prism2_download_data *param ) ;
static int prism2_download_genesis(local_info_t *local , struct prism2_download_data *param ) ;
static int prism2_get_ram_size(local_info_t *local ) ;
static u16 hfa384x_read_reg(struct net_device *dev , u16 reg )
{
  unsigned short tmp ;
  {
  tmp = inw((int )((unsigned int )dev->base_addr + (unsigned int )reg));
  return (tmp);
}
}
static void hfa384x_read_regs(struct net_device *dev , struct hfa384x_regs *regs )
{
  {
  regs->cmd = inw((int )dev->base_addr);
  regs->evstat = inw((int )((unsigned int )dev->base_addr + 48U));
  regs->offset0 = inw((int )((unsigned int )dev->base_addr + 28U));
  regs->offset1 = inw((int )((unsigned int )dev->base_addr + 30U));
  regs->swsupport0 = inw((int )((unsigned int )dev->base_addr + 40U));
  return;
}
}
__inline static void __hostap_cmd_queue_free(local_info_t *local , struct hostap_cmd_queue *entry ,
                                             int del_req )
{
  int tmp ;
  int tmp___0 ;
  {
  if (del_req != 0) {
    entry->del_req = 1;
    tmp = list_empty((struct list_head const *)(& entry->list));
    if (tmp == 0) {
      list_del_init(& entry->list);
      local->cmd_queue_len = local->cmd_queue_len - 1;
    } else {
    }
  } else {
  }
  tmp___0 = atomic_dec_and_test(& entry->usecnt);
  if (tmp___0 != 0 && entry->del_req != 0) {
    kfree((void const *)entry);
  } else {
  }
  return;
}
}
__inline static void hostap_cmd_queue_free(local_info_t *local , struct hostap_cmd_queue *entry ,
                                           int del_req )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp);
  __hostap_cmd_queue_free(local, entry, del_req);
  spin_unlock_irqrestore(& local->cmdlock, flags);
  return;
}
}
static void prism2_clear_cmd_queue(local_info_t *local )
{
  struct list_head *ptr ;
  struct list_head *n ;
  unsigned long flags ;
  struct hostap_cmd_queue *entry ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  {
  tmp = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp);
  ptr = local->cmd_queue.next;
  n = ptr->next;
  goto ldv_46500;
  ldv_46499:
  __mptr = (struct list_head const *)ptr;
  entry = (struct hostap_cmd_queue *)__mptr;
  atomic_inc(& entry->usecnt);
  printk("\017%s: removed pending cmd_queue entry (type=%d, cmd=0x%04x, param0=0x%04x)\n",
         (char *)(& (local->dev)->name), (unsigned int )entry->type, (int )entry->cmd,
         (int )entry->param0);
  __hostap_cmd_queue_free(local, entry, 1);
  ptr = n;
  n = ptr->next;
  ldv_46500: ;
  if ((unsigned long )(& local->cmd_queue) != (unsigned long )ptr) {
    goto ldv_46499;
  } else {
  }
  if (local->cmd_queue_len != 0) {
    printk("\017%s: cmd_queue_len (%d) not zero after flush\n", (char *)(& (local->dev)->name),
           local->cmd_queue_len);
    local->cmd_queue_len = 0;
  } else {
  }
  spin_unlock_irqrestore(& local->cmdlock, flags);
  return;
}
}
static int hfa384x_cmd_issue(struct net_device *dev , struct hostap_cmd_queue *entry )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int tries ;
  u16 reg ;
  unsigned long flags ;
  void *tmp ;
  int tmp___0 ;
  unsigned short tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___0 = (*((local->func)->card_present))(local);
    if (tmp___0 == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  if ((int )entry->issued != 0) {
    printk("\017%s: driver bug - re-issuing command @%p\n", (char *)(& dev->name),
           entry);
  } else {
  }
  tries = 5000;
  goto ldv_46512;
  ldv_46511:
  tries = tries - 1;
  __const_udelay(4295UL);
  ldv_46512:
  tmp___1 = inw((int )dev->base_addr);
  if ((int )((short )tmp___1) < 0 && tries > 0) {
    goto ldv_46511;
  } else {
  }
  if (tries != 5000) {
    prism2_io_debug_error(dev, 1);
    printk("\017%s: hfa384x_cmd_issue: cmd reg was busy for %d usec\n", (char *)(& dev->name),
           5000 - tries);
  } else {
  }
  if (tries == 0) {
    reg = inw((int )dev->base_addr);
    prism2_io_debug_error(dev, 2);
    printk("\017%s: hfa384x_cmd_issue - timeout - reg=0x%04x\n", (char *)(& dev->name),
           (int )reg);
    return (-110);
  } else {
  }
  tmp___2 = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  outw((int )entry->param0, (int )((unsigned int )dev->base_addr + 2U));
  outw((int )entry->param1, (int )((unsigned int )dev->base_addr + 4U));
  outw((int )entry->cmd, (int )dev->base_addr);
  entry->issued = 1;
  spin_unlock_irqrestore(& local->cmdlock, flags);
  return (0);
}
}
static int hfa384x_cmd(struct net_device *dev , u16 cmd , u16 param0 , u16 *param1 ,
                       u16 *resp0 )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int err ;
  int res ;
  int issue ;
  int issued ;
  unsigned long flags ;
  struct hostap_cmd_queue *entry ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  struct lock_class_key __key ;
  long volatile __ret ;
  struct task_struct *tmp___5 ;
  struct task_struct *tmp___6 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  raw_spinlock_t *tmp___9 ;
  struct task_struct *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  struct task_struct *tmp___14 ;
  int tmp___15 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___16 ;
  struct task_struct *tmp___17 ;
  struct task_struct *tmp___18 ;
  struct task_struct *tmp___19 ;
  raw_spinlock_t *tmp___20 ;
  int tmp___21 ;
  u16 reg ;
  unsigned short tmp___22 ;
  unsigned short tmp___23 ;
  {
  issued = 0;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp___0;
  local = iface->local;
  tmp___1 = preempt_count();
  if (((unsigned long )tmp___1 & 2096896UL) != 0UL) {
    printk("\017%s: hfa384x_cmd called from interrupt context\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  if (local->cmd_queue_len > 15) {
    printk("\017%s: hfa384x_cmd: cmd_queue full\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    return (-4);
  } else {
  }
  tmp___4 = kzalloc(160UL, 32U);
  entry = (struct hostap_cmd_queue *)tmp___4;
  if ((unsigned long )entry == (unsigned long )((struct hostap_cmd_queue *)0)) {
    return (-12);
  } else {
  }
  atomic_set(& entry->usecnt, 1);
  entry->type = 0;
  entry->cmd = cmd;
  entry->param0 = param0;
  if ((unsigned long )param1 != (unsigned long )((u16 *)0U)) {
    entry->param1 = *param1;
  } else {
  }
  __init_waitqueue_head(& entry->compl, "&entry->compl", & __key);
  add_wait_queue(& entry->compl, & wait);
  __ret = 1L;
  switch (8UL) {
  case 1UL:
  tmp___5 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___5->state): : "memory",
                       "cc");
  goto ldv_46536;
  case 2UL:
  tmp___6 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___6->state): : "memory",
                       "cc");
  goto ldv_46536;
  case 4UL:
  tmp___7 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___7->state): : "memory",
                       "cc");
  goto ldv_46536;
  case 8UL:
  tmp___8 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___8->state): : "memory",
                       "cc");
  goto ldv_46536;
  default:
  __xchg_wrong_size();
  }
  ldv_46536:
  tmp___9 = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp___9);
  issue = list_empty((struct list_head const *)(& local->cmd_queue));
  if (issue != 0) {
    entry->issuing = 1;
  } else {
  }
  list_add_tail(& entry->list, & local->cmd_queue);
  local->cmd_queue_len = local->cmd_queue_len + 1;
  spin_unlock_irqrestore(& local->cmdlock, flags);
  err = 0;
  if (issue == 0) {
    goto wait_completion;
  } else {
  }
  tmp___10 = get_current();
  tmp___11 = signal_pending(tmp___10);
  if (tmp___11 != 0) {
    err = -4;
  } else {
  }
  if (err == 0) {
    tmp___12 = hfa384x_cmd_issue(dev, entry);
    if (tmp___12 != 0) {
      err = -110;
    } else {
      issued = 1;
    }
  } else {
  }
  wait_completion: ;
  if (err == 0 && (unsigned int )entry->type != 2U) {
    tmp___13 = schedule_timeout(500L);
    res = (int )tmp___13;
  } else {
    res = -1;
  }
  if (err == 0) {
    tmp___14 = get_current();
    tmp___15 = signal_pending(tmp___14);
    if (tmp___15 != 0) {
      err = -4;
    } else {
    }
  } else {
  }
  if (err != 0 && issued != 0) {
    __const_udelay(1288500UL);
  } else {
  }
  __ret___0 = 0L;
  switch (8UL) {
  case 1UL:
  tmp___16 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___16->state): : "memory",
                       "cc");
  goto ldv_46548;
  case 2UL:
  tmp___17 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___17->state): : "memory",
                       "cc");
  goto ldv_46548;
  case 4UL:
  tmp___18 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___18->state): : "memory",
                       "cc");
  goto ldv_46548;
  case 8UL:
  tmp___19 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___19->state): : "memory",
                       "cc");
  goto ldv_46548;
  default:
  __xchg_wrong_size();
  }
  ldv_46548:
  remove_wait_queue(& entry->compl, & wait);
  tmp___20 = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp___20);
  tmp___21 = list_empty((struct list_head const *)(& entry->list));
  if (tmp___21 == 0) {
    printk("\017%s: hfa384x_cmd: entry still in list? (entry=%p, type=%d, res=%d)\n",
           (char *)(& dev->name), entry, (unsigned int )entry->type, res);
    list_del_init(& entry->list);
    local->cmd_queue_len = local->cmd_queue_len - 1;
  } else {
  }
  spin_unlock_irqrestore(& local->cmdlock, flags);
  if (err != 0) {
    printk("\017%s: hfa384x_cmd: interrupted; err=%d\n", (char *)(& dev->name), err);
    res = err;
    goto done;
  } else {
  }
  if ((unsigned int )entry->type != 2U) {
    tmp___22 = inw((int )((unsigned int )dev->base_addr + 48U));
    reg = tmp___22;
    tmp___23 = inw((int )((unsigned int )dev->base_addr + 50U));
    printk("\017%s: hfa384x_cmd: command was not completed (res=%d, entry=%p, type=%d, cmd=0x%04x, param0=0x%04x, EVSTAT=%04x INTEN=%04x)\n",
           (char *)(& dev->name), res, entry, (unsigned int )entry->type, (int )entry->cmd,
           (int )entry->param0, (int )reg, (int )tmp___23);
    if (((unsigned long )reg & 16UL) != 0UL) {
      printk("\f%s: interrupt delivery does not seem to work\n", (char *)(& dev->name));
    } else {
    }
    prism2_io_debug_error(dev, 3);
    res = -110;
    goto done;
  } else {
  }
  if ((unsigned long )resp0 != (unsigned long )((u16 *)0U)) {
    *resp0 = entry->resp0;
  } else {
  }
  if ((unsigned int )entry->res != 0U) {
    printk("\017%s: CMD=0x%04x => res=0x%02x, resp0=0x%04x\n", (char *)(& dev->name),
           (int )cmd, (int )entry->res, (int )entry->resp0);
  } else {
  }
  res = (int )entry->res;
  done:
  hostap_cmd_queue_free(local, entry, 1);
  return (res);
}
}
static int hfa384x_cmd_callback(struct net_device *dev , u16 cmd , u16 param0 , void (*callback)(struct net_device * ,
                                                                                                 long ,
                                                                                                 u16 ,
                                                                                                 u16 ) ,
                                long context )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int issue ;
  int ret ;
  unsigned long flags ;
  struct hostap_cmd_queue *entry ;
  void *tmp ;
  void *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->cmd_queue_len > 17) {
    printk("\017%s: hfa384x_cmd: cmd_queue full\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  tmp___0 = kzalloc(160UL, 32U);
  entry = (struct hostap_cmd_queue *)tmp___0;
  if ((unsigned long )entry == (unsigned long )((struct hostap_cmd_queue *)0)) {
    return (-12);
  } else {
  }
  atomic_set(& entry->usecnt, 1);
  entry->type = 1;
  entry->cmd = cmd;
  entry->param0 = param0;
  entry->callback = callback;
  entry->context = context;
  tmp___1 = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  issue = list_empty((struct list_head const *)(& local->cmd_queue));
  if (issue != 0) {
    entry->issuing = 1;
  } else {
  }
  list_add_tail(& entry->list, & local->cmd_queue);
  local->cmd_queue_len = local->cmd_queue_len + 1;
  spin_unlock_irqrestore(& local->cmdlock, flags);
  if (issue != 0) {
    tmp___2 = hfa384x_cmd_issue(dev, entry);
    if (tmp___2 != 0) {
      ret = -110;
    } else {
      ret = 0;
    }
  } else {
    ret = 0;
  }
  hostap_cmd_queue_free(local, entry, ret);
  return (ret);
}
}
static int __hfa384x_cmd_no_wait(struct net_device *dev , u16 cmd , u16 param0 , int io_debug_num )
{
  int tries ;
  u16 reg ;
  unsigned short tmp ;
  {
  tries = 5000;
  goto ldv_46588;
  ldv_46587:
  tries = tries - 1;
  __const_udelay(4295UL);
  ldv_46588:
  tmp = inw((int )dev->base_addr);
  if ((int )((short )tmp) < 0 && tries > 0) {
    goto ldv_46587;
  } else {
  }
  if (tries == 0) {
    reg = inw((int )dev->base_addr);
    prism2_io_debug_error(dev, io_debug_num);
    printk("\017%s: __hfa384x_cmd_no_wait(%d) - timeout - reg=0x%04x\n", (char *)(& dev->name),
           io_debug_num, (int )reg);
    return (-110);
  } else {
  }
  outw((int )param0, (int )((unsigned int )dev->base_addr + 2U));
  outw((int )cmd, (int )dev->base_addr);
  return (0);
}
}
static int hfa384x_cmd_wait(struct net_device *dev , u16 cmd , u16 param0 )
{
  int res ;
  int tries ;
  u16 reg ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  {
  res = __hfa384x_cmd_no_wait(dev, (int )cmd, (int )param0, 4);
  if (res != 0) {
    return (res);
  } else {
  }
  if (((int )cmd & 63) == 34) {
    tries = 1000000;
  } else {
    tries = 20000;
  }
  goto ldv_46599;
  ldv_46598:
  tries = tries - 1;
  __const_udelay(42950UL);
  ldv_46599:
  tmp = inw((int )((unsigned int )dev->base_addr + 48U));
  if (((unsigned long )tmp & 16UL) == 0UL && tries > 0) {
    goto ldv_46598;
  } else {
  }
  if (tries == 0) {
    reg = inw((int )((unsigned int )dev->base_addr + 48U));
    prism2_io_debug_error(dev, 5);
    printk("\017%s: hfa384x_cmd_wait - timeout2 - reg=0x%04x\n", (char *)(& dev->name),
           (int )reg);
    return (-110);
  } else {
  }
  tmp___0 = inw((int )((unsigned int )dev->base_addr + 8U));
  res = (int )(((unsigned long )tmp___0 & 32512UL) >> 8);
  if (res != 0) {
    printk("\017%s: CMD=0x%04x => res=0x%02x\n", (char *)(& dev->name), (int )cmd,
           res);
  } else {
  }
  outw(16, (int )((unsigned int )dev->base_addr + 52U));
  return (res);
}
}
__inline static int hfa384x_cmd_no_wait(struct net_device *dev , u16 cmd , u16 param0 )
{
  int tmp ;
  {
  tmp = __hfa384x_cmd_no_wait(dev, (int )cmd, (int )param0, 6);
  return (tmp);
}
}
static void prism2_cmd_ev(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  struct hostap_cmd_queue *entry ;
  void *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  unsigned short tmp___1 ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  int res ;
  int tmp___3 ;
  {
  entry = (struct hostap_cmd_queue *)0;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  spin_lock(& local->cmdlock);
  tmp___0 = list_empty((struct list_head const *)(& local->cmd_queue));
  if (tmp___0 == 0) {
    __mptr = (struct list_head const *)local->cmd_queue.next;
    entry = (struct hostap_cmd_queue *)__mptr;
    atomic_inc(& entry->usecnt);
    list_del_init(& entry->list);
    local->cmd_queue_len = local->cmd_queue_len - 1;
    if ((int )entry->issued == 0) {
      printk("\017%s: Command completion event, but cmd not issued\n", (char *)(& dev->name));
      __hostap_cmd_queue_free(local, entry, 1);
      entry = (struct hostap_cmd_queue *)0;
    } else {
    }
  } else {
  }
  spin_unlock(& local->cmdlock);
  if ((unsigned long )entry == (unsigned long )((struct hostap_cmd_queue *)0)) {
    outw(16, (int )((unsigned int )dev->base_addr + 52U));
    printk("\017%s: Command completion event, but no pending commands\n", (char *)(& dev->name));
    return;
  } else {
  }
  entry->resp0 = inw((int )((unsigned int )dev->base_addr + 10U));
  tmp___1 = inw((int )((unsigned int )dev->base_addr + 8U));
  entry->res = (u16 )(((unsigned long )tmp___1 & 32512UL) >> 8);
  outw(16, (int )((unsigned int )dev->base_addr + 52U));
  if ((unsigned int )entry->type == 0U) {
    entry->type = 2;
    __wake_up(& entry->compl, 1U, 1, (void *)0);
  } else
  if ((unsigned int )entry->type == 1U) {
    if ((unsigned long )entry->callback != (unsigned long )((void (*)(struct net_device * ,
                                                                      long , u16 ,
                                                                      u16 ))0)) {
      (*(entry->callback))(dev, entry->context, (int )entry->resp0, (int )entry->res);
    } else {
    }
  } else {
    printk("\017%s: Invalid command completion type %d\n", (char *)(& dev->name),
           (unsigned int )entry->type);
  }
  hostap_cmd_queue_free(local, entry, 1);
  entry = (struct hostap_cmd_queue *)0;
  spin_lock(& local->cmdlock);
  tmp___2 = list_empty((struct list_head const *)(& local->cmd_queue));
  if (tmp___2 == 0) {
    __mptr___0 = (struct list_head const *)local->cmd_queue.next;
    entry = (struct hostap_cmd_queue *)__mptr___0;
    if ((int )entry->issuing != 0) {
      entry = (struct hostap_cmd_queue *)0;
    } else {
    }
    if ((unsigned long )entry != (unsigned long )((struct hostap_cmd_queue *)0)) {
      atomic_inc(& entry->usecnt);
    } else {
    }
  } else {
  }
  spin_unlock(& local->cmdlock);
  if ((unsigned long )entry != (unsigned long )((struct hostap_cmd_queue *)0)) {
    tmp___3 = hfa384x_cmd_issue(dev, entry);
    res = tmp___3;
    spin_lock(& local->cmdlock);
    __hostap_cmd_queue_free(local, entry, res);
    spin_unlock(& local->cmdlock);
  } else {
  }
  return;
}
}
static int hfa384x_wait_offset(struct net_device *dev , u16 o_off )
{
  int tries ;
  int res ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  {
  tries = 50000;
  tmp = inw((int )((unsigned int )dev->base_addr + (unsigned int )o_off));
  res = (int )tmp & 32768;
  goto ldv_46624;
  ldv_46623:
  tries = tries - 1;
  __const_udelay(4295UL);
  tmp___0 = inw((int )((unsigned int )dev->base_addr + (unsigned int )o_off));
  res = (int )tmp___0 & 32768;
  ldv_46624: ;
  if (res != 0 && tries > 0) {
    goto ldv_46623;
  } else {
  }
  return (res);
}
}
static int hfa384x_setup_bap(struct net_device *dev , u16 bap , u16 id , int offset )
{
  u16 o_off ;
  u16 s_off ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  unsigned short tmp___1 ;
  unsigned short tmp___2 ;
  {
  ret = 0;
  if (offset & 1 || (unsigned int )bap > 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )bap == 1U) {
    o_off = 30U;
    s_off = 26U;
  } else {
    o_off = 28U;
    s_off = 24U;
  }
  tmp = hfa384x_wait_offset(dev, (int )o_off);
  if (tmp != 0) {
    prism2_io_debug_error(dev, 7);
    printk("\017%s: hfa384x_setup_bap - timeout before\n", (char *)(& dev->name));
    ret = -110;
    goto out;
  } else {
  }
  outw((int )id, (int )((unsigned int )dev->base_addr + (unsigned int )s_off));
  outw((int )((unsigned short )offset), (int )((unsigned int )dev->base_addr + (unsigned int )o_off));
  tmp___0 = hfa384x_wait_offset(dev, (int )o_off);
  if (tmp___0 != 0) {
    prism2_io_debug_error(dev, 8);
    printk("\017%s: hfa384x_setup_bap - timeout after\n", (char *)(& dev->name));
    ret = -110;
    goto out;
  } else {
  }
  tmp___2 = inw((int )((unsigned int )dev->base_addr + (unsigned int )o_off));
  if (((unsigned long )tmp___2 & 16384UL) != 0UL) {
    prism2_io_debug_error(dev, 9);
    tmp___1 = inw((int )((unsigned int )dev->base_addr + (unsigned int )o_off));
    printk("\017%s: hfa384x_setup_bap - offset error (%d,0x04%x,%d); reg=0x%04x\n",
           (char *)(& dev->name), (int )bap, (int )id, offset, (int )tmp___1);
    ret = -22;
  } else {
  }
  out: ;
  return (ret);
}
}
static int hfa384x_get_rid(struct net_device *dev , u16 rid , void *buf , int len ,
                           int exact_len )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int res ;
  int rlen ;
  struct hfa384x_rid_hdr rec ;
  void *tmp ;
  int tmp___0 ;
  {
  rlen = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->no_pri != 0) {
    printk("\017%s: cannot get RID %04x (len=%d) - no PRI f/w\n", (char *)(& dev->name),
           (int )rid, len);
    return (-25);
  } else {
  }
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___0 = (*((local->func)->card_present))(local);
    if (tmp___0 == 0) {
      return (-19);
    } else {
      goto _L;
    }
  } else
  _L:
  if (local->hw_downloading != 0) {
    return (-19);
  } else {
  }
  res = mutex_lock_interruptible_nested(& local->rid_bap_mtx, 0U);
  if (res != 0) {
    return (res);
  } else {
  }
  res = hfa384x_cmd(dev, 33, (int )rid, (u16 *)0U, (u16 *)0U);
  if (res != 0) {
    printk("\017%s: hfa384x_get_rid: CMDCODE_ACCESS failed (res=%d, rid=%04x, len=%d)\n",
           (char *)(& dev->name), res, (int )rid, len);
    mutex_unlock(& local->rid_bap_mtx);
    return (res);
  } else {
  }
  spin_lock_bh(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )rid, 0);
  if (res == 0) {
    res = hfa384x_from_bap(dev, 0, (void *)(& rec), 4);
  } else {
  }
  if ((unsigned int )rec.len == 0U) {
    res = -61;
  } else {
  }
  rlen = ((int )rec.len + -1) * 2;
  if ((res == 0 && exact_len != 0) && rlen != len) {
    printk("\017%s: hfa384x_get_rid - RID len mismatch: rid=0x%04x, len=%d (expected %d)\n",
           (char *)(& dev->name), (int )rid, rlen, len);
    res = -61;
  } else {
  }
  if (res == 0) {
    res = hfa384x_from_bap(dev, 0, buf, len);
  } else {
  }
  spin_unlock_bh(& local->baplock);
  mutex_unlock(& local->rid_bap_mtx);
  if (res != 0) {
    if (res != -61) {
      printk("\017%s: hfa384x_get_rid (rid=%04x, len=%d) - failed - res=%d\n", (char *)(& dev->name),
             (int )rid, len, res);
    } else {
    }
    if (res == -110) {
      prism2_hw_reset(dev);
    } else {
    }
    return (res);
  } else {
  }
  return (rlen);
}
}
static int hfa384x_set_rid(struct net_device *dev , u16 rid , void *buf , int len )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  struct hfa384x_rid_hdr rec ;
  int res ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->no_pri != 0) {
    printk("\017%s: cannot set RID %04x (len=%d) - no PRI f/w\n", (char *)(& dev->name),
           (int )rid, len);
    return (-25);
  } else {
  }
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___0 = (*((local->func)->card_present))(local);
    if (tmp___0 == 0) {
      return (-19);
    } else {
      goto _L;
    }
  } else
  _L:
  if (local->hw_downloading != 0) {
    return (-19);
  } else {
  }
  rec.rid = rid;
  rec.len = (unsigned int )((int )((unsigned short )(len / 2)) + (int )((unsigned short )(len % 2))) + 1U;
  res = mutex_lock_interruptible_nested(& local->rid_bap_mtx, 0U);
  if (res != 0) {
    return (res);
  } else {
  }
  spin_lock_bh(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )rid, 0);
  if (res == 0) {
    res = hfa384x_to_bap(dev, 0, (void *)(& rec), 4);
  } else {
  }
  if (res == 0) {
    res = hfa384x_to_bap(dev, 0, buf, len);
  } else {
  }
  spin_unlock_bh(& local->baplock);
  if (res != 0) {
    printk("\017%s: hfa384x_set_rid (rid=%04x, len=%d) - failed - res=%d\n", (char *)(& dev->name),
           (int )rid, len, res);
    mutex_unlock(& local->rid_bap_mtx);
    return (res);
  } else {
  }
  res = hfa384x_cmd(dev, 289, (int )rid, (u16 *)0U, (u16 *)0U);
  mutex_unlock(& local->rid_bap_mtx);
  if (res != 0) {
    printk("\017%s: hfa384x_set_rid: CMDCODE_ACCESS_WRITE failed (res=%d, rid=%04x, len=%d)\n",
           (char *)(& dev->name), res, (int )rid, len);
    if (res == -110) {
      prism2_hw_reset(dev);
    } else {
    }
  } else {
  }
  return (res);
}
}
static void hfa384x_disable_interrupts(struct net_device *dev )
{
  {
  outw(0, (int )((unsigned int )dev->base_addr + 50U));
  outw(65535, (int )((unsigned int )dev->base_addr + 52U));
  return;
}
}
static void hfa384x_enable_interrupts(struct net_device *dev )
{
  {
  outw(65535, (int )((unsigned int )dev->base_addr + 52U));
  outw(57503, (int )((unsigned int )dev->base_addr + 50U));
  return;
}
}
static void hfa384x_events_no_bap0(struct net_device *dev )
{
  {
  outw(57368, (int )((unsigned int )dev->base_addr + 50U));
  return;
}
}
static void hfa384x_events_all(struct net_device *dev )
{
  {
  outw(57503, (int )((unsigned int )dev->base_addr + 50U));
  return;
}
}
static void hfa384x_events_only_cmd(struct net_device *dev )
{
  {
  outw(16, (int )((unsigned int )dev->base_addr + 50U));
  return;
}
}
static u16 hfa384x_allocate_fid(struct net_device *dev , int len )
{
  u16 fid ;
  unsigned long delay ;
  int tmp ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = hfa384x_cmd_wait(dev, 10, (int )((u16 )len));
  if (tmp != 0) {
    printk("\017%s: cannot allocate fid, len=%d\n", (char *)(& dev->name), len);
    return (65535U);
  } else {
  }
  delay = (unsigned long )jiffies + 12UL;
  goto ldv_46686;
  ldv_46685:
  yield();
  ldv_46686:
  tmp___0 = inw((int )((unsigned int )dev->base_addr + 48U));
  if (((unsigned long )tmp___0 & 8UL) == 0UL && (long )((unsigned long )jiffies - delay) < 0L) {
    goto ldv_46685;
  } else {
  }
  tmp___1 = inw((int )((unsigned int )dev->base_addr + 48U));
  if (((unsigned long )tmp___1 & 8UL) == 0UL) {
    printk("%s: fid allocate, len=%d - timeout\n", (char *)(& dev->name), len);
    return (65535U);
  } else {
  }
  fid = inw((int )((unsigned int )dev->base_addr + 34U));
  outw(8, (int )((unsigned int )dev->base_addr + 52U));
  return (fid);
}
}
static int prism2_reset_port(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int res ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->dev_enabled == 0) {
    return (0);
  } else {
  }
  res = hfa384x_cmd(dev, 2, 0, (u16 *)0U, (u16 *)0U);
  if (res != 0) {
    printk("\017%s: reset port failed to disable port\n", (char *)(& dev->name));
  } else {
    res = hfa384x_cmd(dev, 1, 0, (u16 *)0U, (u16 *)0U);
    if (res != 0) {
      printk("\017%s: reset port failed to enable port\n", (char *)(& dev->name));
    } else {
    }
  }
  if (local->fragm_threshold != 2346) {
    tmp___0 = hostap_set_word(dev, 64642, (int )((u16 )local->fragm_threshold));
    if (tmp___0 != 0) {
      printk("\017%s: failed to restore fragmentation threshold (%d) after Port0 enable\n",
             (char *)(& dev->name), local->fragm_threshold);
    } else {
    }
  } else {
  }
  hostap_set_antsel(local);
  return (res);
}
}
static int prism2_get_version_info(struct net_device *dev , u16 rid , char const *txt )
{
  struct hfa384x_comp_ident comp ;
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->no_pri != 0) {
    return (-1);
  } else {
  }
  tmp___0 = hfa384x_get_rid(dev, (int )rid, (void *)(& comp), 8, 1);
  if (tmp___0 < 0) {
    printk("\017Could not get RID for component %s\n", txt);
    return (-1);
  } else {
  }
  printk("\016%s: %s: id=0x%02x v%d.%d.%d\n", (char *)(& dev->name), txt, (int )comp.id,
         (int )comp.major, (int )comp.minor, (int )comp.variant);
  return (0);
}
}
static int prism2_setup_rids(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  __le16 tmp ;
  int ret ;
  void *tmp___0 ;
  u16 tmp1 ;
  u16 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  ret = 0;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp___0;
  local = iface->local;
  hostap_set_word(dev, 64736, 2000);
  if (local->fw_ap == 0) {
    tmp___1 = hostap_get_porttype(local);
    tmp1 = tmp___1;
    ret = hostap_set_word(dev, 64512, (int )tmp1);
    if (ret != 0) {
      printk("%s: Port type setting to %d failed\n", (char *)(& dev->name), (int )tmp1);
      goto fail;
    } else {
    }
  } else {
  }
  if (local->iw_mode != 3 || (int )((signed char )local->essid[0]) != 0) {
    ret = hostap_set_string(dev, 64516, (char const *)(& local->essid));
    if (ret != 0) {
      printk("%s: AP own SSID setting failed\n", (char *)(& dev->name));
      goto fail;
    } else {
    }
  } else {
  }
  ret = hostap_set_word(dev, 64519, 2304);
  if (ret != 0) {
    printk("%s: MAC data length setting to %d failed\n", (char *)(& dev->name), 2304);
    goto fail;
  } else {
  }
  tmp___2 = hfa384x_get_rid(dev, 64784, (void *)(& tmp), 2, 1);
  if (tmp___2 < 0) {
    printk("%s: Channel list read failed\n", (char *)(& dev->name));
    ret = -22;
    goto fail;
  } else {
  }
  local->channel_mask = tmp;
  if ((local->channel <= 0 || local->channel > 14) || (((int )local->channel_mask >> (local->channel + -1)) & 1) == 0) {
    printk("\f%s: Channel setting out of range (%d)!\n", (char *)(& dev->name), local->channel);
    ret = -16;
    goto fail;
  } else {
  }
  ret = hostap_set_word(dev, 64515, (int )((u16 )local->channel));
  if (ret != 0) {
    printk("%s: Channel setting to %d failed\n", (char *)(& dev->name), local->channel);
    goto fail;
  } else {
  }
  ret = hostap_set_word(dev, 64563, (int )((u16 )local->beacon_int));
  if (ret != 0) {
    printk("%s: Beacon interval setting to %d failed\n", (char *)(& dev->name), local->beacon_int);
    if (ret == -110) {
      goto fail;
    } else {
    }
  } else {
  }
  ret = hostap_set_word(dev, 64528, (int )((u16 )local->dtim_period));
  if (ret != 0) {
    printk("%s: DTIM period setting to %d failed\n", (char *)(& dev->name), local->dtim_period);
    if (ret == -110) {
      goto fail;
    } else {
    }
  } else {
  }
  ret = hostap_set_word(dev, 64645, (int )((u16 )local->is_promisc));
  if (ret != 0) {
    printk("\016%s: Setting promiscuous mode (%d) failed\n", (char *)(& dev->name),
           local->is_promisc);
  } else {
  }
  if (local->fw_ap == 0) {
    ret = hostap_set_string(dev, 64514, (char const *)(& local->essid));
    if (ret != 0) {
      printk("%s: Desired SSID setting failed\n", (char *)(& dev->name));
      goto fail;
    } else {
    }
  } else {
  }
  if ((unsigned int )local->tx_rate_control == 0U) {
    local->tx_rate_control = 15U;
  } else {
  }
  if ((unsigned int )local->basic_rates == 0U) {
    local->basic_rates = 3U;
  } else {
  }
  if (local->fw_ap == 0) {
    ret = hostap_set_word(dev, 64644, (int )local->tx_rate_control);
    if (ret != 0) {
      printk("%s: TXRateControl setting to %d failed\n", (char *)(& dev->name), (int )local->tx_rate_control);
      goto fail;
    } else {
    }
    ret = hostap_set_word(dev, 64692, (int )local->tx_rate_control);
    if (ret != 0) {
      printk("%s: cnfSupportedRates setting to %d failed\n", (char *)(& dev->name),
             (int )local->tx_rate_control);
    } else {
    }
    ret = hostap_set_word(dev, 64691, (int )local->basic_rates);
    if (ret != 0) {
      printk("%s: cnfBasicRates setting to %d failed\n", (char *)(& dev->name), (int )local->basic_rates);
    } else {
    }
    ret = hostap_set_word(dev, 64641, 1);
    if (ret != 0) {
      printk("%s: Create IBSS setting to 1 failed\n", (char *)(& dev->name));
    } else {
    }
  } else {
  }
  if (local->name_set != 0) {
    hostap_set_string(dev, 64526, (char const *)(& local->name));
  } else {
  }
  tmp___3 = hostap_set_encryption(local);
  if (tmp___3 != 0) {
    printk("\016%s: could not configure encryption\n", (char *)(& dev->name));
  } else {
  }
  hostap_set_antsel(local);
  tmp___4 = hostap_set_roaming(local);
  if (tmp___4 != 0) {
    printk("\016%s: could not set host roaming\n", (char *)(& dev->name));
  } else {
  }
  if (local->sta_fw_ver > 67074U) {
    tmp___5 = hostap_set_word(dev, 64579, (int )((u16 )local->enh_sec));
    if (tmp___5 != 0) {
      printk("\016%s: cnfEnhSecurity setting to 0x%x failed\n", (char *)(& dev->name),
             local->enh_sec);
    } else {
    }
  } else {
  }
  if (local->sta_fw_ver > 2049U) {
    tmp___6 = hostap_set_word(dev, 64578, 1);
    if (tmp___6 != 0) {
      printk("\016%s: cnfThirty2Tally setting failed\n", (char *)(& dev->name));
      local->tallies32 = 0;
    } else {
      local->tallies32 = 1;
    }
  } else {
    local->tallies32 = 0;
  }
  hostap_set_auth_algs(local);
  tmp___7 = hostap_set_word(dev, 64642, (int )((u16 )local->fragm_threshold));
  if (tmp___7 != 0) {
    printk("\016%s: setting FragmentationThreshold to %d failed\n", (char *)(& dev->name),
           local->fragm_threshold);
  } else {
  }
  tmp___8 = hostap_set_word(dev, 64643, (int )((u16 )local->rts_threshold));
  if (tmp___8 != 0) {
    printk("\016%s: setting RTSThreshold to %d failed\n", (char *)(& dev->name), local->rts_threshold);
  } else {
  }
  if (local->manual_retry_count >= 0) {
    tmp___9 = hostap_set_word(dev, 64562, (int )((u16 )local->manual_retry_count));
    if (tmp___9 != 0) {
      printk("\016%s: setting cnfAltRetryCount to %d failed\n", (char *)(& dev->name),
             local->manual_retry_count);
    } else {
    }
  } else {
  }
  if (local->sta_fw_ver > 66304U) {
    tmp___10 = hfa384x_get_rid(dev, 64582, (void *)(& tmp), 2, 1);
    if (tmp___10 == 2) {
      local->rssi_to_dBm = (int )tmp;
    } else {
    }
  } else {
  }
  if (local->sta_fw_ver > 67327U && local->wpa != 0) {
    tmp___11 = hostap_set_word(dev, 64699, 1);
    if (tmp___11 != 0) {
      printk("\016%s: setting ssnHandlingMode to 1 failed\n", (char *)(& dev->name));
    } else {
    }
  } else {
  }
  if (local->sta_fw_ver > 67327U && (unsigned long )local->generic_elem != (unsigned long )((u8 *)0U)) {
    tmp___12 = hfa384x_set_rid(dev, 64584, (void *)local->generic_elem, (int )local->generic_elem_len);
    if (tmp___12 != 0) {
      printk("\016%s: setting genericElement failed\n", (char *)(& dev->name));
    } else {
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int prism2_hw_init(struct net_device *dev , int initial )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int ret ;
  int first ;
  unsigned long start ;
  unsigned long delay ;
  void *tmp ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  unsigned short tmp___2 ;
  {
  first = 1;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  clear_bit(0L, (unsigned long volatile *)(& local->bits));
  init:
  ret = hfa384x_cmd_no_wait(dev, 0, 0);
  if (ret != 0) {
    printk("\016%s: first command failed - assuming card does not have primary firmware\n",
           dev_info);
  } else {
  }
  if (first != 0) {
    tmp___0 = inw((int )((unsigned int )dev->base_addr + 48U));
    if (((unsigned long )tmp___0 & 16UL) != 0UL) {
      outw(16, (int )((unsigned int )dev->base_addr + 52U));
      printk("\017%s: init command completed too quickly - retrying\n", (char *)(& dev->name));
      first = 0;
      goto init;
    } else {
    }
  } else {
  }
  start = jiffies;
  delay = (unsigned long )jiffies + 125UL;
  goto ldv_46729;
  ldv_46728:
  yield();
  ldv_46729:
  tmp___1 = inw((int )((unsigned int )dev->base_addr + 48U));
  if (((unsigned long )tmp___1 & 16UL) == 0UL && (long )((unsigned long )jiffies - delay) < 0L) {
    goto ldv_46728;
  } else {
  }
  tmp___2 = inw((int )((unsigned int )dev->base_addr + 48U));
  if (((unsigned long )tmp___2 & 16UL) == 0UL) {
    printk("\017%s: assuming no Primary image in flash - card initialization not completed\n",
           dev_info);
    local->no_pri = 1;
    if (local->sram_type == -1) {
      local->sram_type = prism2_get_ram_size(local);
    } else {
    }
    return (1);
  } else {
  }
  local->no_pri = 0;
  printk("\017prism2_hw_init: initialized in %lu ms\n", (((unsigned long )jiffies - start) * 1000UL) / 250UL);
  outw(16, (int )((unsigned int )dev->base_addr + 52U));
  return (0);
}
}
static int prism2_hw_init2(struct net_device *dev , int initial )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int i ;
  void *tmp ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct list_head *ptr ;
  int tmp___5 ;
  struct list_head const *__mptr ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  kfree((void const *)local->pda);
  if (local->no_pri != 0) {
    local->pda = (u8 *)0U;
  } else {
    local->pda = prism2_read_pda(dev);
  }
  hfa384x_disable_interrupts(dev);
  outw(35378, (int )((unsigned int )dev->base_addr + 40U));
  tmp___1 = inw((int )((unsigned int )dev->base_addr + 40U));
  if ((unsigned int )tmp___1 != 35378U) {
    tmp___0 = inw((int )((unsigned int )dev->base_addr + 40U));
    printk("SWSUPPORT0 write/read failed: %04X != %04X\n", (int )tmp___0, 35378);
    goto failed;
  } else {
  }
  if (initial != 0 || local->pri_only != 0) {
    hfa384x_events_only_cmd(dev);
    tmp___2 = prism2_get_version_info(dev, 64779, "NIC");
    if (tmp___2 != 0) {
      hfa384x_disable_interrupts(dev);
      goto failed;
    } else {
      tmp___3 = prism2_get_version_info(dev, 64770, "PRI");
      if (tmp___3 != 0) {
        hfa384x_disable_interrupts(dev);
        goto failed;
      } else {
      }
    }
    tmp___4 = prism2_get_version_info(dev, 64800, "STA");
    if (tmp___4 != 0) {
      printk("\017%s: Failed to read STA f/w version - only Primary f/w present\n",
             (char *)(& dev->name));
      local->pri_only = 1;
      return (0);
    } else {
    }
    local->pri_only = 0;
    hfa384x_disable_interrupts(dev);
  } else {
  }
  local->txfid_len = 2364;
  i = 0;
  goto ldv_46740;
  ldv_46739:
  local->txfid[i] = hfa384x_allocate_fid(dev, local->txfid_len);
  if ((unsigned int )local->txfid[i] == 65535U && local->txfid_len > 1600) {
    local->txfid[i] = hfa384x_allocate_fid(dev, 1600);
    if ((unsigned int )local->txfid[i] != 65535U) {
      printk("\017%s: Using shorter TX FID (1600 bytes)\n", (char *)(& dev->name));
      local->txfid_len = 1600;
    } else {
    }
  } else {
  }
  if ((unsigned int )local->txfid[i] == 65535U) {
    goto failed;
  } else {
  }
  local->intransmitfid[i] = 65535U;
  i = i + 1;
  ldv_46740: ;
  if (i <= 7) {
    goto ldv_46739;
  } else {
  }
  hfa384x_events_only_cmd(dev);
  if (initial != 0) {
    prism2_check_sta_fw_version(local);
    tmp___5 = hfa384x_get_rid(dev, 64513, (void *)dev->dev_addr, 6, 1);
    if (tmp___5 < 0) {
      printk("%s: could not get own MAC address\n", (char *)(& dev->name));
    } else {
    }
    ptr = local->hostap_interfaces.next;
    goto ldv_46746;
    ldv_46745:
    __mptr = (struct list_head const *)ptr;
    iface = (struct hostap_interface *)__mptr;
    eth_hw_addr_inherit(iface->dev, dev);
    ptr = ptr->next;
    ldv_46746: ;
    if ((unsigned long )(& local->hostap_interfaces) != (unsigned long )ptr) {
      goto ldv_46745;
    } else {
    }
  } else
  if (local->fw_ap != 0) {
    prism2_check_sta_fw_version(local);
  } else {
  }
  prism2_setup_rids(dev);
  return (0);
  failed: ;
  if (local->no_pri == 0) {
    printk("\f%s: Initialization failed\n", dev_info);
  } else {
  }
  return (1);
}
}
static int prism2_hw_enable(struct net_device *dev , int initial )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int was_resetting ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  was_resetting = local->hw_resetting;
  tmp___0 = hfa384x_cmd(dev, 1, 0, (u16 *)0U, (u16 *)0U);
  if (tmp___0 != 0) {
    printk("%s: MAC port 0 enabling failed\n", (char *)(& dev->name));
    return (1);
  } else {
  }
  local->hw_ready = 1;
  local->hw_reset_tries = 0;
  local->hw_resetting = 0;
  hfa384x_enable_interrupts(dev);
  if (initial != 0) {
    tmp___1 = prism2_reset_port(dev);
    if (tmp___1 != 0) {
      printk("%s: MAC port 0 resetting failed\n", (char *)(& dev->name));
      return (1);
    } else {
    }
  } else {
  }
  if (was_resetting != 0) {
    tmp___2 = netif_queue_stopped((struct net_device const *)dev);
    if ((int )tmp___2) {
      netif_wake_queue(dev);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int prism2_hw_config(struct net_device *dev , int initial )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->hw_downloading != 0) {
    return (1);
  } else {
  }
  tmp___0 = prism2_hw_init(dev, initial);
  if (tmp___0 != 0) {
    return (local->no_pri == 0);
  } else {
  }
  tmp___1 = prism2_hw_init2(dev, initial);
  if (tmp___1 != 0) {
    return (1);
  } else {
  }
  if (local->pri_only == 0 && (initial == 0 || (initial == 2 && local->num_dev_open > 0))) {
    local->dev_enabled = 1;
    tmp___2 = prism2_hw_enable(dev, initial);
    return (tmp___2);
  } else {
  }
  return (0);
}
}
static void prism2_hw_shutdown(struct net_device *dev , int no_disable )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  hfa384x_events_only_cmd(dev);
  local->hw_ready = 0;
  local->dev_enabled = 0;
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___0 = (*((local->func)->card_present))(local);
    if (tmp___0 == 0) {
      printk("\017%s: card already removed or not configured during shutdown\n", (char *)(& dev->name));
      return;
    } else {
    }
  } else {
  }
  if (((unsigned long )no_disable & 1UL) == 0UL) {
    tmp___1 = hfa384x_cmd(dev, 2, 0, (u16 *)0U, (u16 *)0U);
    if (tmp___1 != 0) {
      printk("\f%s: Shutdown failed\n", dev_info);
    } else {
    }
  } else {
  }
  hfa384x_disable_interrupts(dev);
  if (((unsigned long )no_disable & 2UL) != 0UL) {
    hfa384x_events_only_cmd(dev);
  } else {
    prism2_clear_cmd_queue(local);
  }
  return;
}
}
static void prism2_hw_reset(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  tmp___0 = preempt_count();
  if (((unsigned long )tmp___0 & 2096896UL) != 0UL) {
    printk("\017%s: driver bug - prism2_hw_reset() called in interrupt context\n",
           (char *)(& dev->name));
    return;
  } else {
  }
  if (local->hw_downloading != 0) {
    return;
  } else {
  }
  if (local->hw_resetting != 0) {
    printk("\f%s: %s: already resetting card - ignoring reset request\n", dev_info,
           (char *)(& dev->name));
    return;
  } else {
  }
  local->hw_reset_tries = local->hw_reset_tries + 1;
  if (local->hw_reset_tries > 10) {
    printk("\f%s: too many reset tries, skipping\n", (char *)(& dev->name));
    return;
  } else {
  }
  printk("\f%s: %s: resetting card\n", dev_info, (char *)(& dev->name));
  hfa384x_disable_interrupts(dev);
  local->hw_resetting = 1;
  if ((unsigned long )(local->func)->cor_sreset != (unsigned long )((void (*)(local_info_t * ))0)) {
    disable_irq((unsigned int )dev->irq);
    (*((local->func)->cor_sreset))(local);
    enable_irq((unsigned int )dev->irq);
  } else {
  }
  prism2_hw_shutdown(dev, 1);
  prism2_hw_config(dev, 0);
  local->hw_resetting = 0;
  if ((unsigned long )local->dl_pri != (unsigned long )((struct prism2_download_data *)0)) {
    printk("\017%s: persistent download of primary firmware\n", (char *)(& dev->name));
    tmp___1 = prism2_download_genesis(local, local->dl_pri);
    if (tmp___1 < 0) {
      printk("\f%s: download (PRI) failed\n", (char *)(& dev->name));
    } else {
    }
  } else {
  }
  if ((unsigned long )local->dl_sec != (unsigned long )((struct prism2_download_data *)0)) {
    printk("\017%s: persistent download of secondary firmware\n", (char *)(& dev->name));
    tmp___2 = prism2_download_volatile(local, local->dl_sec);
    if (tmp___2 < 0) {
      printk("\f%s: download (SEC) failed\n", (char *)(& dev->name));
    } else {
    }
  } else {
  }
  return;
}
}
static void prism2_schedule_reset(local_info_t *local )
{
  {
  schedule_work(& local->reset_queue);
  return;
}
}
static void handle_reset_queue(struct work_struct *work )
{
  local_info_t *local ;
  struct work_struct const *__mptr ;
  int i ;
  bool tmp ;
  {
  __mptr = (struct work_struct const *)work;
  local = (local_info_t *)__mptr + 0xfffffffffffffc10UL;
  printk("\017%s: scheduled card reset\n", (char *)(& (local->dev)->name));
  prism2_hw_reset(local->dev);
  tmp = netif_queue_stopped((struct net_device const *)local->dev);
  if ((int )tmp) {
    i = 0;
    goto ldv_46784;
    ldv_46783: ;
    if ((unsigned int )local->intransmitfid[i] == 65535U) {
      printk("\017prism2_tx_timeout: wake up queue\n");
      netif_wake_queue(local->dev);
      goto ldv_46782;
    } else {
    }
    i = i + 1;
    ldv_46784: ;
    if (i <= 7) {
      goto ldv_46783;
    } else {
    }
    ldv_46782: ;
  } else {
  }
  return;
}
}
static int prism2_get_txfid_idx(local_info_t *local )
{
  int idx ;
  int end ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& local->txfidlock);
  flags = _raw_spin_lock_irqsave(tmp);
  idx = local->next_txfid;
  end = idx;
  ldv_46794: ;
  if ((unsigned int )local->intransmitfid[idx] == 65535U) {
    local->intransmitfid[idx] = 65534U;
    spin_unlock_irqrestore(& local->txfidlock, flags);
    return (idx);
  } else {
  }
  idx = idx + 1;
  if (idx > 7) {
    idx = 0;
  } else {
  }
  if (idx != end) {
    goto ldv_46794;
  } else {
  }
  spin_unlock_irqrestore(& local->txfidlock, flags);
  (local->dev)->stats.tx_dropped = (local->dev)->stats.tx_dropped + 1UL;
  return (-1);
}
}
static void prism2_transmit_cb(struct net_device *dev , long context , u16 resp0 ,
                               u16 res )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int idx ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  idx = (int )context;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if ((unsigned int )res != 0U) {
    printk("\017%s: prism2_transmit_cb - res=0x%02x\n", (char *)(& dev->name), (int )res);
    return;
  } else {
  }
  if (idx < 0 || idx > 7) {
    printk("\017%s: prism2_transmit_cb called with invalid idx=%d\n", (char *)(& dev->name),
           idx);
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0L, (unsigned long volatile *)(& local->bits));
  if (tmp___0 == 0) {
    printk("\017%s: driver bug: prism2_transmit_cb called with no pending transmit\n",
           (char *)(& dev->name));
  } else {
  }
  tmp___1 = netif_queue_stopped((struct net_device const *)dev);
  if ((int )tmp___1) {
    netif_wake_queue(dev);
  } else {
  }
  spin_lock(& local->txfidlock);
  local->intransmitfid[idx] = resp0;
  idx = idx + 1;
  if (idx > 7) {
    idx = 0;
  } else {
  }
  local->next_txfid = idx;
  ldv_46805: ;
  if ((unsigned int )local->intransmitfid[idx] == 65535U) {
    spin_unlock(& local->txfidlock);
    return;
  } else {
  }
  idx = idx + 1;
  if (idx > 7) {
    idx = 0;
  } else {
  }
  if (local->next_txfid != idx) {
    goto ldv_46805;
  } else {
  }
  spin_unlock(& local->txfidlock);
  netif_stop_queue(dev);
  return;
}
}
static int prism2_transmit(struct net_device *dev , int idx )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int res ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& local->bits));
  if (tmp___0 != 0) {
    printk("\017%s: driver bug - prism2_transmit() called when previous TX was pending\n",
           (char *)(& dev->name));
    return (-1);
  } else {
  }
  netif_stop_queue(dev);
  res = hfa384x_cmd_callback(dev, 267, (int )local->txfid[idx], & prism2_transmit_cb,
                             (long )idx);
  if (res != 0) {
    printk("\017%s: prism2_transmit: CMDCODE_TRANSMIT failed (res=%d)\n", (char *)(& dev->name),
           res);
    dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
    netif_wake_queue(dev);
    return (-1);
  } else {
  }
  dev->trans_start = jiffies;
  return (0);
}
}
static int prism2_tx_80211(struct sk_buff *skb , struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  struct hfa384x_tx_frame txdesc ;
  struct hostap_skb_tx_data *meta ;
  int hdr_len ;
  int data_len ;
  int idx ;
  int res ;
  int ret ;
  u16 tx_control ;
  u16 fc ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  __u16 tmp___4 ;
  {
  ret = -1;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  meta = (struct hostap_skb_tx_data *)(& skb->cb);
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___1 = (*((local->func)->card_present))(local);
    if (tmp___1 == 0) {
      goto _L;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (local->hw_ready == 0) {
    goto _L;
  } else
  if (local->hw_downloading != 0) {
    goto _L;
  } else
  if (local->pri_only != 0) {
    _L:
    tmp___0 = net_ratelimit();
    if (tmp___0 != 0) {
      printk("\017%s: prism2_tx_80211: hw not ready - skipping\n", (char *)(& dev->name));
    } else {
    }
    goto fail;
  } else {
  }
  memset((void *)(& txdesc), 0, 60UL);
  hdr_len = 24;
  skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)(& txdesc.frame_control),
                            (unsigned int const )hdr_len);
  fc = txdesc.frame_control;
  tmp___2 = ieee80211_is_data((int )txdesc.frame_control);
  if (tmp___2 != 0) {
    tmp___3 = ieee80211_has_a4((int )txdesc.frame_control);
    if (tmp___3 != 0) {
      if (skb->len > 29U) {
        skb_copy_from_linear_data_offset((struct sk_buff const *)skb, hdr_len, (void *)(& txdesc.addr4),
                                         6U);
        hdr_len = hdr_len + 6;
      } else {
      }
    } else {
    }
  } else {
  }
  tx_control = local->tx_control;
  if ((unsigned int )meta->tx_cb_idx != 0U) {
    tx_control = (u16 )((unsigned int )tx_control | 2U);
    txdesc.sw_support = (unsigned int )meta->tx_cb_idx;
  } else {
  }
  txdesc.tx_control = tx_control;
  txdesc.tx_rate = meta->rate;
  data_len = (int )(skb->len - (unsigned int )hdr_len);
  txdesc.data_len = (unsigned short )data_len;
  tmp___4 = __fswab16((int )((__u16 )data_len));
  txdesc.len = tmp___4;
  idx = prism2_get_txfid_idx(local);
  if (idx < 0) {
    goto fail;
  } else {
  }
  if (((unsigned long )local->frame_dump & 2UL) != 0UL) {
    hostap_dump_tx_header((char const *)(& dev->name), (struct hfa384x_tx_frame const *)(& txdesc));
  } else {
  }
  spin_lock(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )local->txfid[idx], 0);
  if (res == 0) {
    res = hfa384x_to_bap(dev, 0, (void *)(& txdesc), 60);
  } else {
  }
  if (res == 0) {
    res = hfa384x_to_bap(dev, 0, (void *)skb->data + (unsigned long )hdr_len, (int )(skb->len - (unsigned int )hdr_len));
  } else {
  }
  spin_unlock(& local->baplock);
  if (res == 0) {
    res = prism2_transmit(dev, idx);
  } else {
  }
  if (res != 0) {
    printk("\017%s: prism2_tx_80211 - to BAP0 failed\n", (char *)(& dev->name));
    local->intransmitfid[idx] = 65535U;
    schedule_work(& local->reset_queue);
    goto fail;
  } else {
  }
  ret = 0;
  fail: ;
  return (ret);
}
}
static u16 prism2_read_fid_reg(struct net_device *dev , u16 reg )
{
  u16 val ;
  u16 val2 ;
  u16 val3 ;
  int i ;
  {
  i = 0;
  goto ldv_46839;
  ldv_46838:
  val = inw((int )((unsigned int )dev->base_addr + (unsigned int )reg));
  val2 = inw((int )((unsigned int )dev->base_addr + (unsigned int )reg));
  val3 = inw((int )((unsigned int )dev->base_addr + (unsigned int )reg));
  if ((int )val == (int )val2 && (int )val == (int )val3) {
    return (val);
  } else {
  }
  printk("\017%s: detected fid change (try=%d, reg=%04x): %04x %04x %04x\n", (char *)(& dev->name),
         i, (int )reg, (int )val, (int )val2, (int )val3);
  if (((int )val == (int )val2 || (int )val == (int )val3) && (unsigned int )val != 0U) {
    return (val);
  } else {
  }
  if ((int )val2 == (int )val3 && (unsigned int )val2 != 0U) {
    return (val2);
  } else {
  }
  i = i + 1;
  ldv_46839: ;
  if (i <= 9) {
    goto ldv_46838;
  } else {
  }
  printk("\f%s: Uhhuh.. could not read good fid from reg %04x (%04x %04x %04x)\n",
         (char *)(& dev->name), (int )reg, (int )val, (int )val2, (int )val3);
  return (val);
}
}
static void prism2_rx(local_info_t *local )
{
  struct net_device *dev ;
  int res ;
  int rx_pending ;
  u16 len ;
  u16 hdr_len ;
  u16 rxfid ;
  u16 status ;
  u16 macport ;
  struct hfa384x_rx_frame rxdesc ;
  struct sk_buff *skb ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  dev = local->dev;
  rx_pending = 0;
  skb = (struct sk_buff *)0;
  rxfid = prism2_read_fid_reg(dev, 32);
  if ((unsigned int )rxfid == 0U) {
    rxfid = inw((int )((unsigned int )dev->base_addr + 32U));
    printk("\017prism2_rx: rxfid=0 (next 0x%04x)\n", (int )rxfid);
    if ((unsigned int )rxfid == 0U) {
      schedule_work(& local->reset_queue);
      goto rx_dropped;
    } else {
    }
  } else {
  }
  spin_lock(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )rxfid, 0);
  if (res == 0) {
    res = hfa384x_from_bap(dev, 0, (void *)(& rxdesc), 60);
  } else {
  }
  if (res != 0) {
    spin_unlock(& local->baplock);
    printk("\017%s: copy from BAP0 failed %d\n", (char *)(& dev->name), res);
    if (res == -110) {
      schedule_work(& local->reset_queue);
    } else {
    }
    goto rx_dropped;
  } else {
  }
  len = rxdesc.data_len;
  hdr_len = 60U;
  status = rxdesc.status;
  macport = (unsigned int )((u16 )((int )status >> 8)) & 7U;
  if ((unsigned int )len > 2312U) {
    if ((unsigned int )macport == 7U && local->iw_mode == 6) {
      if ((unsigned int )len > 65521U) {
        hdr_len = (unsigned int )((int )len + (int )hdr_len) + 1U;
        hdr_len = (u16 )((int )hdr_len - 1);
      } else {
      }
      len = 0U;
    } else {
      spin_unlock(& local->baplock);
      printk("\017%s: Received frame with invalid length 0x%04x\n", (char *)(& dev->name),
             (int )len);
      hostap_dump_rx_header((char const *)(& dev->name), (struct hfa384x_rx_frame const *)(& rxdesc));
      goto rx_dropped;
    }
  } else {
  }
  skb = ldv_dev_alloc_skb_12((unsigned int )((int )len + (int )hdr_len));
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    spin_unlock(& local->baplock);
    printk("\017%s: RX failed to allocate skb\n", (char *)(& dev->name));
    goto rx_dropped;
  } else {
  }
  skb->dev = dev;
  __len = (size_t )hdr_len;
  tmp___0 = skb_put(skb, (unsigned int )hdr_len);
  __ret = __builtin_memcpy((void *)tmp___0, (void const *)(& rxdesc), __len);
  if ((unsigned int )len != 0U) {
    tmp___1 = skb_put(skb, (unsigned int )len);
    res = hfa384x_from_bap(dev, 0, (void *)tmp___1, (int )len);
  } else {
  }
  spin_unlock(& local->baplock);
  if (res != 0) {
    printk("\017%s: RX failed to read frame data\n", (char *)(& dev->name));
    goto rx_dropped;
  } else {
  }
  skb_queue_tail(& local->rx_list, skb);
  tasklet_schedule(& local->rx_tasklet);
  rx_exit: ;
  if (rx_pending == 0) {
    outw(1, (int )((unsigned int )dev->base_addr + 52U));
  } else {
  }
  return;
  rx_dropped:
  dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    ldv_skb_free(skb);
  } else {
  }
  goto rx_exit;
}
}
static void hostap_rx_skb(local_info_t *local , struct sk_buff *skb )
{
  struct hfa384x_rx_frame *rxdesc ;
  struct net_device *dev ;
  struct hostap_80211_rx_status stats ;
  int hdrlen ;
  int rx_hdrlen ;
  unsigned char *tmp ;
  {
  dev = skb->dev;
  rx_hdrlen = 60;
  if (skb->len <= 59U) {
    if (local->iw_mode == 6 && skb->len > 29U) {
      rx_hdrlen = (int )skb->len;
    } else {
      ldv_skb_free(skb);
      return;
    }
  } else {
  }
  rxdesc = (struct hfa384x_rx_frame *)skb->data;
  if (local->frame_dump & 1 && skb->len > 59U) {
    hostap_dump_rx_header((char const *)(& dev->name), (struct hfa384x_rx_frame const *)rxdesc);
  } else {
  }
  if ((int )rxdesc->status & 1 && (local->monitor_allow_fcserr == 0 || local->iw_mode != 6)) {
    goto drop;
  } else {
  }
  if (skb->len > 2304U) {
    printk("\017%s: RX: len(%d) > MAX(%d)\n", (char *)(& dev->name), skb->len, 2304);
    goto drop;
  } else {
  }
  stats.mac_time = rxdesc->time;
  stats.signal = (int )rxdesc->signal - (int )((u8 )local->rssi_to_dBm);
  stats.noise = (int )rxdesc->silence - (int )((u8 )local->rssi_to_dBm);
  stats.rate = (u16 )rxdesc->rate;
  hdrlen = hostap_80211_get_hdrlen((int )rxdesc->frame_control);
  if (hdrlen > rx_hdrlen) {
    hdrlen = rx_hdrlen;
  } else {
  }
  tmp = skb_pull(skb, (unsigned int )(rx_hdrlen - hdrlen));
  memmove((void *)tmp, (void const *)(& rxdesc->frame_control), (size_t )hdrlen);
  hostap_80211_rx(dev, skb, & stats);
  return;
  drop:
  ldv_skb_free(skb);
  return;
}
}
static void hostap_rx_tasklet(unsigned long data )
{
  local_info_t *local ;
  struct sk_buff *skb ;
  {
  local = (local_info_t *)data;
  goto ldv_46875;
  ldv_46874:
  hostap_rx_skb(local, skb);
  ldv_46875:
  skb = ldv_skb_dequeue_13(& local->rx_list);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_46874;
  } else {
  }
  return;
}
}
static void prism2_alloc_ev(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  int idx ;
  u16 fid ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  unsigned short tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  fid = prism2_read_fid_reg(dev, 34);
  spin_lock(& local->txfidlock);
  idx = local->next_alloc;
  ldv_46884: ;
  if ((int )local->txfid[idx] == (int )fid) {
    if ((unsigned int )local->intransmitfid[idx] == 65535U) {
      printk("Already released txfid found at idx %d\n", idx);
    } else {
    }
    if ((unsigned int )local->intransmitfid[idx] == 65534U) {
      printk("Already reserved txfid found at idx %d\n", idx);
    } else {
    }
    local->intransmitfid[idx] = 65535U;
    idx = idx + 1;
    local->next_alloc = idx <= 7 ? idx : 0;
    tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& local->bits));
    if (tmp___0 == 0) {
      tmp___1 = netif_queue_stopped((struct net_device const *)dev);
      if ((int )tmp___1) {
        netif_wake_queue(dev);
      } else {
      }
    } else {
    }
    spin_unlock(& local->txfidlock);
    return;
  } else {
  }
  idx = idx + 1;
  if (idx > 7) {
    idx = 0;
  } else {
  }
  if (local->next_alloc != idx) {
    goto ldv_46884;
  } else {
  }
  tmp___2 = inw((int )((unsigned int )dev->base_addr + 34U));
  printk("\f%s: could not find matching txfid (0x%04x, new read 0x%04x) for alloc event\n",
         (char *)(& dev->name), (int )fid, (int )tmp___2);
  printk("\017TXFIDs:");
  idx = 0;
  goto ldv_46887;
  ldv_46886:
  printk(" %04x[%04x]", (int )local->txfid[idx], (int )local->intransmitfid[idx]);
  idx = idx + 1;
  ldv_46887: ;
  if (idx <= 7) {
    goto ldv_46886;
  } else {
  }
  printk("\n");
  spin_unlock(& local->txfidlock);
  return;
}
}
static void hostap_tx_callback(local_info_t *local , struct hfa384x_tx_frame *txdesc ,
                               int ok , char *payload )
{
  u16 sw_support ;
  u16 hdrlen ;
  u16 len ;
  struct sk_buff *skb ;
  struct hostap_tx_callback_info *cb ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___3 ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned char *tmp___5 ;
  {
  tmp = ether_addr_equal((u8 const *)(& txdesc->addr2), (u8 const *)(local->dev)->dev_addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    printk("\017%s: TX callback - foreign frame\n", (char *)(& (local->dev)->name));
    return;
  } else {
  }
  sw_support = (u16 )txdesc->sw_support;
  spin_lock(& local->lock);
  cb = local->tx_callback;
  goto ldv_46901;
  ldv_46900:
  cb = cb->next;
  ldv_46901: ;
  if ((unsigned long )cb != (unsigned long )((struct hostap_tx_callback_info *)0) && (int )cb->idx != (int )sw_support) {
    goto ldv_46900;
  } else {
  }
  spin_unlock(& local->lock);
  if ((unsigned long )cb == (unsigned long )((struct hostap_tx_callback_info *)0)) {
    printk("\017%s: could not find TX callback (idx %d)\n", (char *)(& (local->dev)->name),
           (int )sw_support);
    return;
  } else {
  }
  tmp___1 = hostap_80211_get_hdrlen((int )txdesc->frame_control);
  hdrlen = (u16 )tmp___1;
  len = txdesc->data_len;
  skb = ldv_dev_alloc_skb_12((unsigned int )((int )hdrlen + (int )len));
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    printk("\017%s: hostap_tx_callback failed to allocate skb\n", (char *)(& (local->dev)->name));
    return;
  } else {
  }
  __len = (size_t )hdrlen;
  tmp___3 = skb_put(skb, (unsigned int )hdrlen);
  __ret = __builtin_memcpy((void *)tmp___3, (void const *)(& txdesc->frame_control),
                           __len);
  if ((unsigned long )payload != (unsigned long )((char *)0)) {
    __len___0 = (size_t )len;
    tmp___5 = skb_put(skb, (unsigned int )len);
    __ret___0 = __builtin_memcpy((void *)tmp___5, (void const *)payload, __len___0);
  } else {
  }
  skb->dev = local->dev;
  skb_reset_mac_header(skb);
  (*(cb->func))(skb, ok, cb->data);
  return;
}
}
static int hostap_tx_compl_read(local_info_t *local , int error , struct hfa384x_tx_frame *txdesc ,
                                char **payload )
{
  u16 fid ;
  u16 len ;
  int res ;
  int ret ;
  struct net_device *dev ;
  void *tmp ;
  int tmp___0 ;
  {
  ret = 0;
  dev = local->dev;
  fid = prism2_read_fid_reg(dev, 36);
  spin_lock(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )fid, 0);
  if (res == 0) {
    res = hfa384x_from_bap(dev, 0, (void *)txdesc, 60);
  } else {
  }
  if (res != 0) {
    printk("\017%s: TX (err=%d) - fid=0x%04x - could not read txdesc\n", (char *)(& dev->name),
           error, (int )fid);
    if (res == -110) {
      schedule_work(& local->reset_queue);
    } else {
    }
    ret = -1;
    goto fail;
  } else {
  }
  if (txdesc->sw_support != 0U) {
    len = txdesc->data_len;
    if ((unsigned int )len <= 2303U) {
      tmp = kmalloc((size_t )len, 32U);
      *payload = (char *)tmp;
      if ((unsigned long )*payload == (unsigned long )((char *)0)) {
        printk("\017%s: could not read TX frame payload\n", (char *)(& dev->name));
        kfree((void const *)*payload);
        *payload = (char *)0;
        ret = -1;
        goto fail;
      } else {
        tmp___0 = hfa384x_from_bap(dev, 0, (void *)*payload, (int )len);
        if (tmp___0 != 0) {
          printk("\017%s: could not read TX frame payload\n", (char *)(& dev->name));
          kfree((void const *)*payload);
          *payload = (char *)0;
          ret = -1;
          goto fail;
        } else {
        }
      }
    } else {
    }
  } else {
  }
  fail:
  spin_unlock(& local->baplock);
  return (ret);
}
}
static void prism2_tx_ev(local_info_t *local )
{
  struct net_device *dev ;
  char *payload ;
  struct hfa384x_tx_frame txdesc ;
  int tmp ;
  {
  dev = local->dev;
  payload = (char *)0;
  tmp = hostap_tx_compl_read(local, 0, & txdesc, & payload);
  if (tmp != 0) {
    goto fail;
  } else {
  }
  if (((unsigned long )local->frame_dump & 2UL) != 0UL) {
    printk("\017%s: TX - status=0x%04x retry_count=%d tx_rate=%d seq_ctrl=%d duration_id=%d\n",
           (char *)(& dev->name), (int )txdesc.status, (int )txdesc.retry_count, (int )txdesc.tx_rate,
           (int )txdesc.seq_ctrl, (int )txdesc.duration_id);
  } else {
  }
  if (txdesc.sw_support != 0U) {
    hostap_tx_callback(local, & txdesc, 1, payload);
  } else {
  }
  kfree((void const *)payload);
  fail:
  outw(2, (int )((unsigned int )dev->base_addr + 52U));
  return;
}
}
static void hostap_sta_tx_exc_tasklet(unsigned long data )
{
  local_info_t *local ;
  struct sk_buff *skb ;
  struct hfa384x_tx_frame *txdesc ;
  int hdrlen ;
  int tmp ;
  unsigned char *tmp___0 ;
  {
  local = (local_info_t *)data;
  goto ldv_46936;
  ldv_46935:
  txdesc = (struct hfa384x_tx_frame *)skb->data;
  if (skb->len > 59U) {
    tmp = hostap_80211_get_hdrlen((int )txdesc->frame_control);
    hdrlen = tmp;
    tmp___0 = skb_pull(skb, 60U - (unsigned int )hdrlen);
    memmove((void *)tmp___0, (void const *)(& txdesc->frame_control), (size_t )hdrlen);
    hostap_handle_sta_tx_exc(local, skb);
  } else {
  }
  ldv_skb_free(skb);
  ldv_46936:
  skb = ldv_skb_dequeue_15(& local->sta_tx_exc_list);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_46935;
  } else {
  }
  return;
}
}
static void prism2_txexc(local_info_t *local )
{
  struct net_device *dev ;
  u16 status ;
  u16 fc ;
  int show_dump ;
  int res ;
  char *payload ;
  struct hfa384x_tx_frame txdesc ;
  union iwreq_data wrqu ;
  size_t __len ;
  void *__ret ;
  struct sk_buff *skb ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  dev = local->dev;
  payload = (char *)0;
  show_dump = local->frame_dump & 4;
  dev->stats.tx_errors = dev->stats.tx_errors + 1UL;
  res = hostap_tx_compl_read(local, 1, & txdesc, & payload);
  outw(4, (int )((unsigned int )dev->base_addr + 52U));
  if (res != 0) {
    return;
  } else {
  }
  status = txdesc.status;
  if (((unsigned long )status & 3UL) != 0UL) {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& wrqu.addr.sa_data), (void const *)(& txdesc.addr1),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& wrqu.addr.sa_data), (void const *)(& txdesc.addr1),
                               __len);
    }
    wrqu.addr.sa_family = 1U;
    wireless_send_event(dev, 35840U, & wrqu, (char const *)0);
  } else {
    show_dump = 1;
  }
  if ((local->iw_mode == 3 || local->iw_mode == 4) || ((unsigned long )local->wds_type & 2UL) != 0UL) {
    skb = ldv_dev_alloc_skb_12(60U);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      __len___0 = 60UL;
      if (__len___0 > 63UL) {
        tmp = skb_put(skb, 60U);
        __ret___0 = memcpy((void *)tmp, (void const *)(& txdesc), __len___0);
      } else {
        tmp___0 = skb_put(skb, 60U);
        __ret___0 = __builtin_memcpy((void *)tmp___0, (void const *)(& txdesc),
                                     __len___0);
      }
      skb_queue_tail(& local->sta_tx_exc_list, skb);
      tasklet_schedule(& local->sta_tx_exc_tasklet);
    } else {
    }
  } else {
  }
  if (txdesc.sw_support != 0U) {
    hostap_tx_callback(local, & txdesc, 0, payload);
  } else {
  }
  kfree((void const *)payload);
  if (show_dump == 0) {
    return;
  } else {
  }
  printk("\017%s: TXEXC - status=0x%04x (%s%s%s%s) tx_control=%04x\n", (char *)(& dev->name),
         (int )status, (int )status & 1 ? (char *)"[RetryErr]" : (char *)"", ((unsigned long )status & 2UL) != 0UL ? (char *)"[AgedErr]" : (char *)"",
         ((unsigned long )status & 4UL) != 0UL ? (char *)"[Discon]" : (char *)"",
         ((unsigned long )status & 8UL) != 0UL ? (char *)"[FormErr]" : (char *)"",
         (int )txdesc.tx_control);
  fc = txdesc.frame_control;
  tmp___1 = ieee80211_has_fromds((int )txdesc.frame_control);
  tmp___2 = ieee80211_has_tods((int )txdesc.frame_control);
  tmp___3 = ieee80211_is_data((int )txdesc.frame_control);
  tmp___4 = ieee80211_is_ctl((int )txdesc.frame_control);
  tmp___5 = ieee80211_is_mgmt((int )txdesc.frame_control);
  printk("\017   retry_count=%d tx_rate=%d fc=0x%04x (%s%s%s::%d%s%s)\n", (int )txdesc.retry_count,
         (int )txdesc.tx_rate, (int )fc, tmp___5 != 0 ? (char *)"Mgmt" : (char *)"",
         tmp___4 != 0 ? (char *)"Ctrl" : (char *)"", tmp___3 != 0 ? (char *)"Data" : (char *)"",
         ((int )fc & 240) >> 4, tmp___2 != 0 ? (char *)" ToDS" : (char *)"", tmp___1 != 0 ? (char *)" FromDS" : (char *)"");
  printk("\017   A1=%pM A2=%pM A3=%pM A4=%pM\n", (u8 *)(& txdesc.addr1), (u8 *)(& txdesc.addr2),
         (u8 *)(& txdesc.addr3), (u8 *)(& txdesc.addr4));
  return;
}
}
static void hostap_info_tasklet(unsigned long data )
{
  local_info_t *local ;
  struct sk_buff *skb ;
  {
  local = (local_info_t *)data;
  goto ldv_46962;
  ldv_46961:
  hostap_info_process(local, skb);
  ldv_skb_free(skb);
  ldv_46962:
  skb = ldv_skb_dequeue_17(& local->info_list);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_46961;
  } else {
  }
  return;
}
}
static void prism2_info(local_info_t *local )
{
  struct net_device *dev ;
  u16 fid ;
  int res ;
  int left ;
  struct hfa384x_info_frame info ;
  struct sk_buff *skb ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  dev = local->dev;
  fid = inw((int )((unsigned int )dev->base_addr + 16U));
  spin_lock(& local->baplock);
  res = hfa384x_setup_bap(dev, 0, (int )fid, 0);
  if (res == 0) {
    res = hfa384x_from_bap(dev, 0, (void *)(& info), 4);
  } else {
  }
  if (res != 0) {
    spin_unlock(& local->baplock);
    printk("\017Could not get info frame (fid=0x%04x)\n", (int )fid);
    if (res == -110) {
      schedule_work(& local->reset_queue);
    } else {
    }
    goto out;
  } else {
  }
  left = ((int )info.len + -1) * 2;
  if (((int )((short )info.len) < 0 || (unsigned int )info.len == 0U) || left > 2060) {
    spin_unlock(& local->baplock);
    printk("\017%s: Received info frame with invalid length 0x%04x (type 0x%04x)\n",
           (char *)(& dev->name), (int )info.len, (int )info.type);
    goto out;
  } else {
  }
  skb = ldv_dev_alloc_skb_12((unsigned int )left + 4U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    spin_unlock(& local->baplock);
    printk("\017%s: Could not allocate skb for info frame\n", (char *)(& dev->name));
    goto out;
  } else {
  }
  __len = 4UL;
  if (__len > 63UL) {
    tmp = skb_put(skb, 4U);
    __ret = memcpy((void *)tmp, (void const *)(& info), __len);
  } else {
    tmp___0 = skb_put(skb, 4U);
    __ret = __builtin_memcpy((void *)tmp___0, (void const *)(& info), __len);
  }
  if (left > 0) {
    tmp___1 = skb_put(skb, (unsigned int )left);
    tmp___2 = hfa384x_from_bap(dev, 0, (void *)tmp___1, left);
    if (tmp___2 != 0) {
      spin_unlock(& local->baplock);
      printk("\f%s: Info frame read failed (fid=0x%04x, len=0x%04x, type=0x%04x\n",
             (char *)(& dev->name), (int )fid, (int )info.len, (int )info.type);
      ldv_skb_free(skb);
      goto out;
    } else {
    }
  } else {
  }
  spin_unlock(& local->baplock);
  skb_queue_tail(& local->info_list, skb);
  tasklet_schedule(& local->info_tasklet);
  out:
  outw(128, (int )((unsigned int )dev->base_addr + 52U));
  return;
}
}
static void hostap_bap_tasklet(unsigned long data )
{
  local_info_t *local ;
  struct net_device *dev ;
  u16 ev ;
  int frames ;
  int tmp ;
  int tmp___0 ;
  {
  local = (local_info_t *)data;
  dev = local->dev;
  frames = 30;
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp = (*((local->func)->card_present))(local);
    if (tmp == 0) {
      return;
    } else {
    }
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& local->bits));
  goto ldv_46986;
  ldv_46985:
  ev = inw((int )((unsigned int )dev->base_addr + 48U));
  if ((unsigned int )ev == 65535U || ((unsigned long )ev & 135UL) == 0UL) {
    goto ldv_46984;
  } else {
  }
  if ((int )ev & 1) {
    prism2_rx(local);
  } else {
  }
  if (((unsigned long )ev & 128UL) != 0UL) {
    prism2_info(local);
  } else {
  }
  if (((unsigned long )ev & 2UL) != 0UL) {
    prism2_tx_ev(local);
  } else {
  }
  if (((unsigned long )ev & 4UL) != 0UL) {
    prism2_txexc(local);
  } else {
  }
  ldv_46986:
  tmp___0 = frames;
  frames = frames - 1;
  if (tmp___0 > 0) {
    goto ldv_46985;
  } else {
  }
  ldv_46984:
  set_bit(2L, (unsigned long volatile *)(& local->bits));
  clear_bit(1L, (unsigned long volatile *)(& local->bits));
  hfa384x_events_all(dev);
  clear_bit(2L, (unsigned long volatile *)(& local->bits));
  return;
}
}
static void prism2_infdrop(struct net_device *dev )
{
  unsigned long last_inquire ;
  {
  last_inquire = 0UL;
  printk("\017%s: INFDROP event\n", (char *)(& dev->name));
  if (last_inquire == 0UL || (long )((last_inquire - (unsigned long )jiffies) + 250UL) < 0L) {
    hfa384x_cmd_callback(dev, 17, 61696, (void (*)(struct net_device * , long , u16 ,
                                                   u16 ))0, 0L);
    last_inquire = jiffies;
  } else {
  }
  return;
}
}
static void prism2_ev_tick(struct net_device *dev )
{
  struct hostap_interface *iface ;
  local_info_t *local ;
  u16 evstat ;
  u16 inten ;
  int prev_stuck ;
  void *tmp ;
  {
  prev_stuck = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if ((long )((local->last_tick_timer - (unsigned long )jiffies) + 1250UL) < 0L && local->last_tick_timer != 0UL) {
    evstat = inw((int )((unsigned int )dev->base_addr + 48U));
    inten = inw((int )((unsigned int )dev->base_addr + 50U));
    if (prev_stuck == 0) {
      printk("\016%s: SW TICK stuck? bits=0x%lx EvStat=%04x IntEn=%04x\n", (char *)(& dev->name),
             local->bits, (int )evstat, (int )inten);
    } else {
    }
    local->sw_tick_stuck = local->sw_tick_stuck + 1U;
    if (((unsigned long )evstat & 135UL) != 0UL && ((unsigned long )inten & 135UL) != 0UL) {
      printk("\016%s: trying to recover from IRQ hang\n", (char *)(& dev->name));
      hfa384x_events_no_bap0(dev);
    } else {
    }
    prev_stuck = 1;
  } else {
    prev_stuck = 0;
  }
  return;
}
}
static void prism2_check_magic(local_info_t *local )
{
  unsigned long last_magic_err ;
  struct net_device *dev ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  int tmp___1 ;
  unsigned short tmp___2 ;
  unsigned short tmp___3 ;
  {
  last_magic_err = 0UL;
  dev = local->dev;
  tmp___3 = inw((int )((unsigned int )dev->base_addr + 40U));
  if ((unsigned int )tmp___3 != 35378U) {
    if (local->hw_ready == 0) {
      return;
    } else {
    }
    outw(65535, (int )((unsigned int )dev->base_addr + 52U));
    if ((long )((last_magic_err - (unsigned long )jiffies) + 2500UL) < 0L) {
      tmp = inw((int )((unsigned int )dev->base_addr + 40U));
      printk("%s: Interrupt, but SWSUPPORT0 does not match: %04X != %04X - card removed?\n",
             (char *)(& dev->name), (int )tmp, 35378);
      last_magic_err = jiffies;
    } else {
      tmp___1 = net_ratelimit();
      if (tmp___1 != 0) {
        tmp___0 = inw((int )((unsigned int )dev->base_addr + 40U));
        printk("\017%s: interrupt - SWSUPPORT0=%04x MAGIC=%04x\n", (char *)(& dev->name),
               (int )tmp___0, 35378);
      } else {
      }
    }
    tmp___2 = inw((int )((unsigned int )dev->base_addr + 40U));
    if ((unsigned int )tmp___2 != 65535U) {
      schedule_work(& local->reset_queue);
    } else {
    }
    return;
  } else {
  }
  return;
}
}
static irqreturn_t prism2_interrupt(int irq , void *dev_id )
{
  struct net_device *dev ;
  struct hostap_interface *iface ;
  local_info_t *local ;
  int events ;
  u16 ev ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned short tmp___3 ;
  unsigned short tmp___4 ;
  int tmp___5 ;
  unsigned short tmp___6 ;
  {
  dev = (struct net_device *)dev_id;
  events = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  spin_lock(& local->irq_init_lock);
  if (dev->base_addr == 0UL) {
    tmp___0 = net_ratelimit();
    if (tmp___0 != 0) {
      printk("\017%s: Interrupt, but dev not configured\n", (char *)(& dev->name));
    } else {
    }
    spin_unlock(& local->irq_init_lock);
    return (1);
  } else {
  }
  spin_unlock(& local->irq_init_lock);
  prism2_io_debug_add(dev, 7, 0, 0);
  if ((unsigned long )(local->func)->card_present != (unsigned long )((int (*)(local_info_t * ))0)) {
    tmp___2 = (*((local->func)->card_present))(local);
    if (tmp___2 == 0) {
      tmp___1 = net_ratelimit();
      if (tmp___1 != 0) {
        printk("\017%s: Interrupt, but dev not OK\n", (char *)(& dev->name));
      } else {
      }
      return (1);
    } else {
    }
  } else {
  }
  prism2_check_magic(local);
  ldv_47033:
  ev = inw((int )((unsigned int )dev->base_addr + 48U));
  if ((unsigned int )ev == 65535U) {
    if (local->shutdown != 0) {
      return (1);
    } else {
    }
    outw(65535, (int )((unsigned int )dev->base_addr + 52U));
    printk("\017%s: prism2_interrupt: ev=0xffff\n", (char *)(& dev->name));
    return (1);
  } else {
  }
  tmp___3 = inw((int )((unsigned int )dev->base_addr + 50U));
  ev = (u16 )((int )tmp___3 & (int )ev);
  if ((unsigned int )ev == 0U) {
    goto ldv_47031;
  } else {
  }
  if (((unsigned long )ev & 16UL) != 0UL) {
    prism2_cmd_ev(dev);
  } else {
  }
  if ((local->hw_ready == 0 || local->hw_resetting != 0) || local->dev_enabled == 0) {
    ev = inw((int )((unsigned int )dev->base_addr + 48U));
    if (((unsigned long )ev & 16UL) != 0UL) {
      goto next_event;
    } else {
    }
    if (((unsigned long )ev & 57503UL) == 0UL) {
      return (1);
    } else {
    }
    if (local->dev_enabled != 0 && ((unsigned long )ev & 0xffffffffffff7fffUL) != 0UL) {
      tmp___5 = net_ratelimit();
      if (tmp___5 != 0) {
        tmp___4 = inw((int )((unsigned int )dev->base_addr + 50U));
        printk("\017%s: prism2_interrupt: hw not ready; skipping events 0x%04x (IntEn=0x%04x)%s%s%s\n",
               (char *)(& dev->name), (int )ev, (int )tmp___4, local->hw_ready == 0 ? (char *)" (!hw_ready)" : (char *)"",
               local->hw_resetting != 0 ? (char *)" (hw_resetting)" : (char *)"",
               local->dev_enabled == 0 ? (char *)" (!dev_enabled)" : (char *)"");
      } else {
      }
    } else {
    }
    outw((int )ev, (int )((unsigned int )dev->base_addr + 52U));
    return (1);
  } else {
  }
  if ((int )((short )ev) < 0) {
    prism2_ev_tick(dev);
    outw(32768, (int )((unsigned int )dev->base_addr + 52U));
  } else {
  }
  if (((unsigned long )ev & 8UL) != 0UL) {
    prism2_alloc_ev(dev);
    outw(8, (int )((unsigned int )dev->base_addr + 52U));
  } else {
  }
  if (((unsigned long )ev & 135UL) != 0UL) {
    hfa384x_events_no_bap0(dev);
    tasklet_schedule(& local->bap_tasklet);
  } else {
  }
  if (((unsigned long )ev & 16384UL) != 0UL) {
    printk("\017%s: WTERR event\n", (char *)(& dev->name));
    outw(16384, (int )((unsigned int )dev->base_addr + 52U));
  } else {
  }
  if (((unsigned long )ev & 8192UL) != 0UL) {
    prism2_infdrop(dev);
    outw(8192, (int )((unsigned int )dev->base_addr + 52U));
  } else {
  }
  next_event:
  events = events + 1;
  if (events > 19) {
    tmp___6 = inw((int )((unsigned int )dev->base_addr + 48U));
    printk("\017prism2_interrupt: >%d events (EvStat=0x%04x)\n", 20, (int )tmp___6);
    goto ldv_47031;
  } else {
  }
  goto ldv_47033;
  ldv_47031:
  prism2_io_debug_add(dev, 7, 0, 1);
  return (events != 0);
}
}
static void prism2_check_sta_fw_version(local_info_t *local )
{
  struct hfa384x_comp_ident comp ;
  int id ;
  int variant ;
  int major ;
  int minor ;
  int tmp ;
  {
  tmp = hfa384x_get_rid(local->dev, 64800, (void *)(& comp), 8, 1);
  if (tmp < 0) {
    return;
  } else {
  }
  local->fw_ap = 0;
  id = (int )comp.id;
  if (id != 31) {
    if (id == 331) {
      local->fw_ap = 1;
    } else {
    }
    return;
  } else {
  }
  major = (int )comp.major;
  minor = (int )comp.minor;
  variant = (int )comp.variant;
  local->sta_fw_ver = (u32 )(((major << 16) | (minor << 8)) | variant);
  local->fw_encrypt_ok = local->sta_fw_ver > 66568U;
  if ((local->iw_mode == 3 && local->host_encrypt == 0) && local->fw_encrypt_ok == 0) {
    printk("\017%s: defaulting to host-based encryption as a workaround for firmware bug in Host AP mode WEP\n",
           (char *)(& (local->dev)->name));
    local->host_encrypt = 1;
  } else {
  }
  if (local->sta_fw_ver > 66815U) {
    local->wds_type = local->wds_type | 4U;
  } else {
    printk("\017%s: defaulting to bogus WDS frame as a workaround for firmware bug in Host AP mode WDS\n",
           (char *)(& (local->dev)->name));
  }
  hostap_check_sta_fw_version(local->ap, (int )local->sta_fw_ver);
  return;
}
}
static void hostap_passive_scan(unsigned long data )
{
  local_info_t *local ;
  struct net_device *dev ;
  u16 chan ;
  int max_tries ;
  int tmp ;
  int tmp___0 ;
  {
  local = (local_info_t *)data;
  dev = local->dev;
  if (local->passive_scan_interval <= 0) {
    return;
  } else {
  }
  if ((unsigned int )local->passive_scan_state == 1U) {
    max_tries = 16;
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& local->bits));
    if (tmp != 0) {
      printk("\017%s: passive scan detected pending TX - delaying\n", (char *)(& dev->name));
      local->passive_scan_timer.expires = (unsigned long )jiffies + 25UL;
      add_timer(& local->passive_scan_timer);
      return;
    } else {
    }
    ldv_47049:
    local->passive_scan_channel = local->passive_scan_channel + 1;
    if (local->passive_scan_channel > 14) {
      local->passive_scan_channel = 1;
    } else {
    }
    max_tries = max_tries - 1;
    if ((((int )local->channel_mask >> (local->passive_scan_channel + -1)) & 1) == 0 && max_tries > 0) {
      goto ldv_47049;
    } else {
    }
    if (max_tries == 0) {
      printk("\016%s: no allowed passive scan channels found\n", (char *)(& dev->name));
      return;
    } else {
    }
    printk("\017%s: passive scan channel %d\n", (char *)(& dev->name), local->passive_scan_channel);
    chan = (u16 )local->passive_scan_channel;
    local->passive_scan_state = 0;
    local->passive_scan_timer.expires = (unsigned long )jiffies + 25UL;
  } else {
    chan = (u16 )local->channel;
    local->passive_scan_state = 1;
    local->passive_scan_timer.expires = (unsigned long )(local->passive_scan_interval * 250) + (unsigned long )jiffies;
  }
  tmp___0 = hfa384x_cmd_callback(dev, 2104, (int )chan, (void (*)(struct net_device * ,
                                                                  long , u16 , u16 ))0,
                                 0L);
  if (tmp___0 != 0) {
    printk("\v%s: passive scan channel set %d failed\n", (char *)(& dev->name), (int )chan);
  } else {
  }
  add_timer(& local->passive_scan_timer);
  return;
}
}
static void handle_comms_qual_update(struct work_struct *work )
{
  local_info_t *local ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  local = (local_info_t *)__mptr + 0xfffffffffffff340UL;
  prism2_update_comms_qual(local->dev);
  return;
}
}
static void hostap_tick_timer(unsigned long data )
{
  unsigned long last_inquire ;
  local_info_t *local ;
  {
  last_inquire = 0UL;
  local = (local_info_t *)data;
  local->last_tick_timer = jiffies;
  if (((((last_inquire == 0UL || (long )((last_inquire - (unsigned long )jiffies) + 2500UL) < 0L) && local->hw_downloading == 0) && local->hw_ready != 0) && local->hw_resetting == 0) && local->dev_enabled != 0) {
    hfa384x_cmd_callback(local->dev, 17, 61696, (void (*)(struct net_device * , long ,
                                                          u16 , u16 ))0, 0L);
    last_inquire = jiffies;
  } else {
  }
  if ((local->last_comms_qual_update == 0UL || (long )((local->last_comms_qual_update - (unsigned long )jiffies) + 2500UL) < 0L) && (local->iw_mode == 2 || local->iw_mode == 1)) {
    schedule_work(& local->comms_qual_update);
  } else {
  }
  local->tick_timer.expires = (unsigned long )jiffies + 500UL;
  add_timer(& local->tick_timer);
  return;
}
}
static int prism2_registers_proc_show(struct seq_file *m , void *v )
{
  local_info_t *local ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  {
  local = (local_info_t *)m->private;
  tmp = hfa384x_read_reg(local->dev, 0);
  seq_printf(m, "CMD=%04x\n", (int )tmp);
  tmp___0 = hfa384x_read_reg(local->dev, 2);
  seq_printf(m, "PARAM0=%04x\n", (int )tmp___0);
  tmp___1 = hfa384x_read_reg(local->dev, 4);
  seq_printf(m, "PARAM1=%04x\n", (int )tmp___1);
  tmp___2 = hfa384x_read_reg(local->dev, 6);
  seq_printf(m, "PARAM2=%04x\n", (int )tmp___2);
  tmp___3 = hfa384x_read_reg(local->dev, 8);
  seq_printf(m, "STATUS=%04x\n", (int )tmp___3);
  tmp___4 = hfa384x_read_reg(local->dev, 10);
  seq_printf(m, "RESP0=%04x\n", (int )tmp___4);
  tmp___5 = hfa384x_read_reg(local->dev, 12);
  seq_printf(m, "RESP1=%04x\n", (int )tmp___5);
  tmp___6 = hfa384x_read_reg(local->dev, 14);
  seq_printf(m, "RESP2=%04x\n", (int )tmp___6);
  tmp___7 = hfa384x_read_reg(local->dev, 16);
  seq_printf(m, "INFOFID=%04x\n", (int )tmp___7);
  tmp___8 = hfa384x_read_reg(local->dev, 20);
  seq_printf(m, "CONTROL=%04x\n", (int )tmp___8);
  tmp___9 = hfa384x_read_reg(local->dev, 24);
  seq_printf(m, "SELECT0=%04x\n", (int )tmp___9);
  tmp___10 = hfa384x_read_reg(local->dev, 26);
  seq_printf(m, "SELECT1=%04x\n", (int )tmp___10);
  tmp___11 = hfa384x_read_reg(local->dev, 28);
  seq_printf(m, "OFFSET0=%04x\n", (int )tmp___11);
  tmp___12 = hfa384x_read_reg(local->dev, 30);
  seq_printf(m, "OFFSET1=%04x\n", (int )tmp___12);
  tmp___13 = hfa384x_read_reg(local->dev, 32);
  seq_printf(m, "RXFID=%04x\n", (int )tmp___13);
  tmp___14 = hfa384x_read_reg(local->dev, 34);
  seq_printf(m, "ALLOCFID=%04x\n", (int )tmp___14);
  tmp___15 = hfa384x_read_reg(local->dev, 36);
  seq_printf(m, "TXCOMPLFID=%04x\n", (int )tmp___15);
  tmp___16 = hfa384x_read_reg(local->dev, 40);
  seq_printf(m, "SWSUPPORT0=%04x\n", (int )tmp___16);
  tmp___17 = hfa384x_read_reg(local->dev, 42);
  seq_printf(m, "SWSUPPORT1=%04x\n", (int )tmp___17);
  tmp___18 = hfa384x_read_reg(local->dev, 44);
  seq_printf(m, "SWSUPPORT2=%04x\n", (int )tmp___18);
  tmp___19 = hfa384x_read_reg(local->dev, 48);
  seq_printf(m, "EVSTAT=%04x\n", (int )tmp___19);
  tmp___20 = hfa384x_read_reg(local->dev, 50);
  seq_printf(m, "INTEN=%04x\n", (int )tmp___20);
  tmp___21 = hfa384x_read_reg(local->dev, 52);
  seq_printf(m, "EVACK=%04x\n", (int )tmp___21);
  tmp___22 = hfa384x_read_reg(local->dev, 58);
  seq_printf(m, "AUXPAGE=%04x\n", (int )tmp___22);
  tmp___23 = hfa384x_read_reg(local->dev, 60);
  seq_printf(m, "AUXOFFSET=%04x\n", (int )tmp___23);
  return (0);
}
}
static int prism2_registers_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & prism2_registers_proc_show, tmp);
  return (tmp___0);
}
}
static struct file_operations const prism2_registers_proc_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & prism2_registers_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int prism2_set_tim(struct net_device *dev , int aid , int set )
{
  struct list_head *ptr ;
  struct set_tim_data *new_entry ;
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  void *tmp___0 ;
  struct set_tim_data *entry ;
  struct list_head const *__mptr ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  tmp___0 = kzalloc(24UL, 32U);
  new_entry = (struct set_tim_data *)tmp___0;
  if ((unsigned long )new_entry == (unsigned long )((struct set_tim_data *)0)) {
    return (-12);
  } else {
  }
  new_entry->aid = aid;
  new_entry->set = set;
  spin_lock_bh(& local->set_tim_lock);
  ptr = local->set_tim_list.next;
  goto ldv_47102;
  ldv_47101:
  __mptr = (struct list_head const *)ptr;
  entry = (struct set_tim_data *)__mptr;
  if (entry->aid == aid) {
    entry->set = set;
    kfree((void const *)new_entry);
    new_entry = (struct set_tim_data *)0;
    goto ldv_47100;
  } else {
  }
  ptr = ptr->next;
  ldv_47102: ;
  if ((unsigned long )(& local->set_tim_list) != (unsigned long )ptr) {
    goto ldv_47101;
  } else {
  }
  ldv_47100: ;
  if ((unsigned long )new_entry != (unsigned long )((struct set_tim_data *)0)) {
    list_add_tail(& new_entry->list, & local->set_tim_list);
  } else {
  }
  spin_unlock_bh(& local->set_tim_lock);
  schedule_work(& local->set_tim_queue);
  return (0);
}
}
static void handle_set_tim_queue(struct work_struct *work )
{
  local_info_t *local ;
  struct work_struct const *__mptr ;
  struct set_tim_data *entry ;
  u16 val ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  local = (local_info_t *)__mptr + 0xfffffffffffffb68UL;
  ldv_47114:
  entry = (struct set_tim_data *)0;
  spin_lock_bh(& local->set_tim_lock);
  tmp = list_empty((struct list_head const *)(& local->set_tim_list));
  if (tmp == 0) {
    __mptr___0 = (struct list_head const *)local->set_tim_list.next;
    entry = (struct set_tim_data *)__mptr___0;
    list_del(& entry->list);
  } else {
  }
  spin_unlock_bh(& local->set_tim_lock);
  if ((unsigned long )entry == (unsigned long )((struct set_tim_data *)0)) {
    goto ldv_47113;
  } else {
  }
  val = (u16 )entry->aid;
  if (entry->set != 0) {
    val = (u16 )((unsigned int )val | 32768U);
  } else {
  }
  tmp___0 = hostap_set_word(local->dev, 64576, (int )val);
  if (tmp___0 != 0) {
    printk("\017%s: set_tim failed (aid=%d set=%d)\n", (char *)(& (local->dev)->name),
           entry->aid, entry->set);
  } else {
  }
  kfree((void const *)entry);
  goto ldv_47114;
  ldv_47113: ;
  return;
}
}
static void prism2_clear_set_tim_queue(local_info_t *local )
{
  struct list_head *ptr ;
  struct list_head *n ;
  struct set_tim_data *entry ;
  struct list_head const *__mptr ;
  {
  ptr = local->set_tim_list.next;
  n = ptr->next;
  goto ldv_47124;
  ldv_47123:
  __mptr = (struct list_head const *)ptr;
  entry = (struct set_tim_data *)__mptr;
  list_del(& entry->list);
  kfree((void const *)entry);
  ptr = n;
  n = ptr->next;
  ldv_47124: ;
  if ((unsigned long )(& local->set_tim_list) != (unsigned long )ptr) {
    goto ldv_47123;
  } else {
  }
  return;
}
}
static struct lock_class_key hostap_netdev_xmit_lock_key ;
static struct lock_class_key hostap_netdev_addr_lock_key ;
static void prism2_set_lockdep_class_one(struct net_device *dev , struct netdev_queue *txq ,
                                         void *_unused )
{
  {
  lockdep_init_map(& txq->_xmit_lock.ldv_6338.ldv_6337.dep_map, "&hostap_netdev_xmit_lock_key",
                   & hostap_netdev_xmit_lock_key, 0);
  return;
}
}
static void prism2_set_lockdep_class(struct net_device *dev )
{
  {
  lockdep_init_map(& dev->addr_list_lock.ldv_6338.ldv_6337.dep_map, "&hostap_netdev_addr_lock_key",
                   & hostap_netdev_addr_lock_key, 0);
  netdev_for_each_tx_queue(dev, & prism2_set_lockdep_class_one, (void *)0);
  return;
}
}
static struct net_device *prism2_init_local_data(struct prism2_helper_functions *funcs ,
                                                 int card_idx , struct device *sdev )
{
  struct net_device *dev ;
  struct hostap_interface *iface ;
  struct local_info *local ;
  int len ;
  int i ;
  int ret ;
  size_t tmp ;
  char *tmp___0 ;
  void *tmp___1 ;
  struct net_device *tmp___2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  size_t tmp___3 ;
  size_t __len ;
  void *__ret ;
  struct lock_class_key __key___6 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___7 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___8 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___9 ;
  struct lock_class_key __key___10 ;
  atomic_long_t __constr_expr_3 ;
  struct lock_class_key __key___11 ;
  {
  if ((unsigned long )funcs == (unsigned long )((struct prism2_helper_functions *)0)) {
    return ((struct net_device *)0);
  } else {
  }
  tmp = strlen((char const *)(& dev_template));
  len = (int )tmp;
  if (len > 15) {
    printk("\fhostap: Invalid dev_template=\'%s\'\n", (char *)(& dev_template));
    return ((struct net_device *)0);
  } else {
    tmp___0 = strstr((char const *)(& dev_template), "%d");
    if ((unsigned long )tmp___0 == (unsigned long )((char *)0)) {
      printk("\fhostap: Invalid dev_template=\'%s\'\n", (char *)(& dev_template));
      return ((struct net_device *)0);
    } else {
    }
  }
  len = 7326;
  dev = alloc_etherdev_mqs(len, 1U, 1U);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return ((struct net_device *)0);
  } else {
  }
  tmp___1 = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp___1;
  local = (struct local_info *)(((long )(iface + 1UL) + 3L) & -4L);
  local->ap = (struct ap_data *)(((long )(local + 1UL) + 3L) & -4L);
  tmp___2 = dev;
  iface->dev = tmp___2;
  local->dev = tmp___2;
  iface->local = local;
  iface->type = 0;
  INIT_LIST_HEAD(& local->hostap_interfaces);
  local->hw_module = & __this_module;
  local->func = funcs;
  (local->func)->cmd = & hfa384x_cmd;
  (local->func)->read_regs = & hfa384x_read_regs;
  (local->func)->get_rid = & hfa384x_get_rid;
  (local->func)->set_rid = & hfa384x_set_rid;
  (local->func)->hw_enable = & prism2_hw_enable;
  (local->func)->hw_config = & prism2_hw_config;
  (local->func)->hw_reset = & prism2_hw_reset;
  (local->func)->hw_shutdown = & prism2_hw_shutdown;
  (local->func)->reset_port = & prism2_reset_port;
  (local->func)->schedule_reset = & prism2_schedule_reset;
  (local->func)->read_aux_fops = & prism2_download_aux_dump_proc_fops;
  (local->func)->download = & prism2_download;
  (local->func)->tx = & prism2_tx_80211;
  (local->func)->set_tim = & prism2_set_tim;
  (local->func)->need_tx_headroom = 0;
  local->mtu = mtu;
  __rwlock_init(& local->iface_lock, "&local->iface_lock", & __key);
  spinlock_check(& local->txfidlock);
  __raw_spin_lock_init(& local->txfidlock.ldv_6338.rlock, "&(&local->txfidlock)->rlock",
                       & __key___0);
  spinlock_check(& local->cmdlock);
  __raw_spin_lock_init(& local->cmdlock.ldv_6338.rlock, "&(&local->cmdlock)->rlock",
                       & __key___1);
  spinlock_check(& local->baplock);
  __raw_spin_lock_init(& local->baplock.ldv_6338.rlock, "&(&local->baplock)->rlock",
                       & __key___2);
  spinlock_check(& local->lock);
  __raw_spin_lock_init(& local->lock.ldv_6338.rlock, "&(&local->lock)->rlock", & __key___3);
  spinlock_check(& local->irq_init_lock);
  __raw_spin_lock_init(& local->irq_init_lock.ldv_6338.rlock, "&(&local->irq_init_lock)->rlock",
                       & __key___4);
  __mutex_init(& local->rid_bap_mtx, "&local->rid_bap_mtx", & __key___5);
  if (card_idx < 0 || card_idx > 7) {
    card_idx = 0;
  } else {
  }
  local->card_idx = card_idx;
  tmp___3 = strlen((char const *)(& essid));
  len = (int )tmp___3;
  __len = (size_t )(32 < len ? 32 : len);
  __ret = __builtin_memcpy((void *)(& local->essid), (void const *)(& essid), __len);
  local->essid[32] = 0;
  i = iw_mode[iw_mode[card_idx] >= 0 ? card_idx : 0];
  if ((i > 0 && i <= 4) || i == 6) {
    local->iw_mode = i;
  } else {
    printk("\fprism2: Unknown iw_mode %d; using IW_MODE_MASTER\n", i);
    local->iw_mode = 3;
  }
  local->channel = channel[channel[card_idx] >= 0 ? card_idx : 0];
  local->beacon_int = beacon_int[beacon_int[card_idx] >= 0 ? card_idx : 0];
  local->dtim_period = dtim_period[dtim_period[card_idx] >= 0 ? card_idx : 0];
  local->wds_max_connections = 16;
  local->tx_control = 12U;
  local->manual_retry_count = -1;
  local->rts_threshold = 2347;
  local->fragm_threshold = 2346;
  local->rssi_to_dBm = 100;
  local->auth_algs = 3;
  local->sram_type = -1;
  local->scan_channel_mask = 65535U;
  local->monitor_type = 3;
  __init_work(& local->reset_queue, 0);
  __constr_expr_0.counter = 137438953408L;
  local->reset_queue.data = __constr_expr_0;
  lockdep_init_map(& local->reset_queue.lockdep_map, "(&local->reset_queue)", & __key___6,
                   0);
  INIT_LIST_HEAD(& local->reset_queue.entry);
  local->reset_queue.func = & handle_reset_queue;
  __init_work(& local->set_multicast_list_queue, 0);
  __constr_expr_1.counter = 137438953408L;
  local->set_multicast_list_queue.data = __constr_expr_1;
  lockdep_init_map(& local->set_multicast_list_queue.lockdep_map, "(&local->set_multicast_list_queue)",
                   & __key___7, 0);
  INIT_LIST_HEAD(& local->set_multicast_list_queue.entry);
  local->set_multicast_list_queue.func = & hostap_set_multicast_list_queue;
  __init_work(& local->set_tim_queue, 0);
  __constr_expr_2.counter = 137438953408L;
  local->set_tim_queue.data = __constr_expr_2;
  lockdep_init_map(& local->set_tim_queue.lockdep_map, "(&local->set_tim_queue)",
                   & __key___8, 0);
  INIT_LIST_HEAD(& local->set_tim_queue.entry);
  local->set_tim_queue.func = & handle_set_tim_queue;
  INIT_LIST_HEAD(& local->set_tim_list);
  spinlock_check(& local->set_tim_lock);
  __raw_spin_lock_init(& local->set_tim_lock.ldv_6338.rlock, "&(&local->set_tim_lock)->rlock",
                       & __key___9);
  __init_work(& local->comms_qual_update, 0);
  __constr_expr_3.counter = 137438953408L;
  local->comms_qual_update.data = __constr_expr_3;
  lockdep_init_map(& local->comms_qual_update.lockdep_map, "(&local->comms_qual_update)",
                   & __key___10, 0);
  INIT_LIST_HEAD(& local->comms_qual_update.entry);
  local->comms_qual_update.func = & handle_comms_qual_update;
  memset((void *)(& local->bap_tasklet), 0, 40UL);
  local->bap_tasklet.func = & hostap_bap_tasklet;
  local->bap_tasklet.data = (unsigned long )local;
  memset((void *)(& local->info_tasklet), 0, 40UL);
  local->info_tasklet.func = & hostap_info_tasklet;
  local->info_tasklet.data = (unsigned long )local;
  hostap_info_init(local);
  memset((void *)(& local->rx_tasklet), 0, 40UL);
  local->rx_tasklet.func = & hostap_rx_tasklet;
  local->rx_tasklet.data = (unsigned long )local;
  skb_queue_head_init(& local->rx_list);
  memset((void *)(& local->sta_tx_exc_tasklet), 0, 40UL);
  local->sta_tx_exc_tasklet.func = & hostap_sta_tx_exc_tasklet;
  local->sta_tx_exc_tasklet.data = (unsigned long )local;
  skb_queue_head_init(& local->sta_tx_exc_list);
  INIT_LIST_HEAD(& local->cmd_queue);
  __init_waitqueue_head(& local->hostscan_wq, "&local->hostscan_wq", & __key___11);
  lib80211_crypt_info_init(& local->crypt_info, (char *)(& dev->name), & local->lock);
  reg_timer_3(& local->passive_scan_timer);
  local->passive_scan_timer.data = (unsigned long )local;
  local->passive_scan_timer.function = & hostap_passive_scan;
  reg_timer_3(& local->tick_timer);
  local->tick_timer.data = (unsigned long )local;
  local->tick_timer.function = & hostap_tick_timer;
  local->tick_timer.expires = (unsigned long )jiffies + 500UL;
  add_timer(& local->tick_timer);
  INIT_LIST_HEAD(& local->bss_list);
  hostap_setup_dev(dev, local, 0);
  dev->type = 801U;
  dev->header_ops = & hostap_80211_ops;
  rtnl_lock();
  ret = dev_alloc_name(dev, "wifi%d");
  dev->dev.parent = sdev;
  if (ret >= 0) {
    ret = register_netdevice(dev);
  } else {
  }
  prism2_set_lockdep_class(dev);
  rtnl_unlock();
  if (ret < 0) {
    printk("\f%s: register netdevice failed!\n", dev_info);
    goto fail;
  } else {
  }
  printk("\016%s: Registered netdevice %s\n", dev_info, (char *)(& dev->name));
  hostap_init_data(local);
  return (dev);
  fail:
  free_netdev(dev);
  return ((struct net_device *)0);
}
}
static int hostap_hw_ready(struct net_device *dev )
{
  struct hostap_interface *iface ;
  struct local_info *local ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  local->ddev = hostap_add_interface(local, 1, 0, "", (char const *)(& dev_template));
  if ((unsigned long )local->ddev != (unsigned long )((struct net_device *)0)) {
    if (local->iw_mode == 2 || local->iw_mode == 1) {
      netif_carrier_off(local->dev);
      netif_carrier_off(local->ddev);
    } else {
    }
    hostap_init_proc(local);
    proc_create_data("registers", 0, local->proc, & prism2_registers_proc_fops, (void *)local);
    hostap_init_ap_proc(local);
    return (0);
  } else {
  }
  return (-1);
}
}
static void prism2_free_local_data(struct net_device *dev )
{
  struct hostap_tx_callback_info *tx_cb ;
  struct hostap_tx_callback_info *tx_cb_prev ;
  int i ;
  struct hostap_interface *iface ;
  struct local_info *local ;
  struct list_head *ptr ;
  struct list_head *n ;
  void *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  struct hostap_bss_info *bss ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return;
  } else {
  }
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  ptr = local->hostap_interfaces.next;
  n = ptr->next;
  goto ldv_47187;
  ldv_47186:
  __mptr = (struct list_head const *)ptr;
  iface = (struct hostap_interface *)__mptr;
  if ((unsigned int )iface->type == 0U) {
    goto ldv_47185;
  } else {
  }
  hostap_remove_interface(iface->dev, 0, 1);
  ldv_47185:
  ptr = n;
  n = ptr->next;
  ldv_47187: ;
  if ((unsigned long )(& local->hostap_interfaces) != (unsigned long )ptr) {
    goto ldv_47186;
  } else {
  }
  unregister_netdev(local->dev);
  flush_work(& local->reset_queue);
  flush_work(& local->set_multicast_list_queue);
  flush_work(& local->set_tim_queue);
  flush_work(& local->info_queue);
  flush_work(& local->comms_qual_update);
  lib80211_crypt_info_free(& local->crypt_info);
  tmp___0 = timer_pending((struct timer_list const *)(& local->passive_scan_timer));
  if (tmp___0 != 0) {
    ldv_del_timer_19(& local->passive_scan_timer);
  } else {
  }
  tmp___1 = timer_pending((struct timer_list const *)(& local->tick_timer));
  if (tmp___1 != 0) {
    ldv_del_timer_20(& local->tick_timer);
  } else {
  }
  prism2_clear_cmd_queue(local);
  skb_queue_purge(& local->info_list);
  skb_queue_purge(& local->rx_list);
  skb_queue_purge(& local->sta_tx_exc_list);
  if ((unsigned long )local->ap != (unsigned long )((struct ap_data *)0)) {
    hostap_free_data(local->ap);
  } else {
  }
  if ((unsigned long )local->proc != (unsigned long )((struct proc_dir_entry *)0)) {
    remove_proc_entry("registers", local->proc);
  } else {
  }
  hostap_remove_proc(local);
  tx_cb = local->tx_callback;
  goto ldv_47190;
  ldv_47189:
  tx_cb_prev = tx_cb;
  tx_cb = tx_cb->next;
  kfree((void const *)tx_cb_prev);
  ldv_47190: ;
  if ((unsigned long )tx_cb != (unsigned long )((struct hostap_tx_callback_info *)0)) {
    goto ldv_47189;
  } else {
  }
  hostap_set_hostapd(local, 0, 0);
  hostap_set_hostapd_sta(local, 0, 0);
  i = 0;
  goto ldv_47193;
  ldv_47192: ;
  if ((unsigned long )local->frag_cache[i].skb != (unsigned long )((struct sk_buff *)0)) {
    ldv_skb_free(local->frag_cache[i].skb);
  } else {
  }
  i = i + 1;
  ldv_47193: ;
  if (i <= 3) {
    goto ldv_47192;
  } else {
  }
  prism2_download_free_data(local->dl_pri);
  prism2_download_free_data(local->dl_sec);
  prism2_clear_set_tim_queue(local);
  ptr = local->bss_list.next;
  n = ptr->next;
  goto ldv_47199;
  ldv_47198:
  __mptr___0 = (struct list_head const *)ptr;
  bss = (struct hostap_bss_info *)__mptr___0;
  kfree((void const *)bss);
  ptr = n;
  n = ptr->next;
  ldv_47199: ;
  if ((unsigned long )(& local->bss_list) != (unsigned long )ptr) {
    goto ldv_47198;
  } else {
  }
  kfree((void const *)local->pda);
  kfree((void const *)local->last_scan_results);
  kfree((void const *)local->generic_elem);
  free_netdev(local->dev);
  return;
}
}
static int prism2_enable_aux_port(struct net_device *dev , int enable )
{
  u16 val ;
  u16 reg ;
  int i ;
  int tries ;
  unsigned long flags ;
  struct hostap_interface *iface ;
  local_info_t *local ;
  void *tmp ;
  raw_spinlock_t *tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp;
  local = iface->local;
  if (local->no_pri != 0) {
    return (0);
  } else {
  }
  tmp___0 = spinlock_check(& local->cmdlock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tries = 5000;
  goto ldv_47216;
  ldv_47215:
  tries = tries - 1;
  __const_udelay(4295UL);
  ldv_47216:
  tmp___1 = inw((int )dev->base_addr);
  if ((int )((short )tmp___1) < 0 && tries > 0) {
    goto ldv_47215;
  } else {
  }
  if (tries == 0) {
    reg = inw((int )dev->base_addr);
    spin_unlock_irqrestore(& local->cmdlock, flags);
    printk("%s: prism2_enable_aux_port - timeout - reg=0x%04x\n", (char *)(& dev->name),
           (int )reg);
    return (-110);
  } else {
  }
  val = inw((int )((unsigned int )dev->base_addr + 20U));
  if (enable != 0) {
    outw(65025, (int )((unsigned int )dev->base_addr + 2U));
    outw(56355, (int )((unsigned int )dev->base_addr + 4U));
    outw(47685, (int )((unsigned int )dev->base_addr + 6U));
    if (((unsigned long )val & 49152UL) != 0UL) {
      printk("prism2_enable_aux_port: was not disabled!?\n");
    } else {
    }
    val = (unsigned int )val & 16383U;
    val = (u16 )((unsigned int )val | 32768U);
  } else {
    outw(0, (int )((unsigned int )dev->base_addr + 2U));
    outw(0, (int )((unsigned int )dev->base_addr + 4U));
    outw(0, (int )((unsigned int )dev->base_addr + 6U));
    if (((unsigned long )val & 49152UL) != 49152UL) {
      printk("prism2_enable_aux_port: was not enabled!?\n");
    } else {
    }
    val = (unsigned int )val & 16383U;
    val = (u16 )((unsigned int )val | 16384U);
  }
  outw((int )val, (int )((unsigned int )dev->base_addr + 20U));
  __const_udelay(21475UL);
  i = 10000;
  goto ldv_47220;
  ldv_47219:
  val = inw((int )((unsigned int )dev->base_addr + 20U));
  val = (unsigned int )val & 49152U;
  if ((enable != 0 && (unsigned int )val == 49152U) || (enable == 0 && (unsigned int )val == 0U)) {
    goto ldv_47218;
  } else {
  }
  __const_udelay(42950UL);
  i = i - 1;
  ldv_47220: ;
  if (i > 0) {
    goto ldv_47219;
  } else {
  }
  ldv_47218:
  spin_unlock_irqrestore(& local->cmdlock, flags);
  if (i == 0) {
    printk("prism2_enable_aux_port(%d) timed out\n", enable);
    return (-110);
  } else {
  }
  return (0);
}
}
static int hfa384x_from_aux(struct net_device *dev , unsigned int addr , int len ,
                            void *buf )
{
  u16 page ;
  u16 offset ;
  {
  if ((int )addr & 1 || len & 1) {
    return (-1);
  } else {
  }
  page = (u16 )(addr >> 7);
  offset = (unsigned int )((u16 )addr) & 127U;
  outw((int )page, (int )((unsigned int )dev->base_addr + 58U));
  outw((int )offset, (int )((unsigned int )dev->base_addr + 60U));
  __const_udelay(21475UL);
  insw((int )((unsigned int )dev->base_addr + 62U), buf, (unsigned long )(len / 2));
  return (0);
}
}
static int hfa384x_to_aux(struct net_device *dev , unsigned int addr , int len , void *buf )
{
  u16 page ;
  u16 offset ;
  {
  if ((int )addr & 1 || len & 1) {
    return (-1);
  } else {
  }
  page = (u16 )(addr >> 7);
  offset = (unsigned int )((u16 )addr) & 127U;
  outw((int )page, (int )((unsigned int )dev->base_addr + 58U));
  outw((int )offset, (int )((unsigned int )dev->base_addr + 60U));
  __const_udelay(21475UL);
  outsw((int )((unsigned int )dev->base_addr + 62U), (void const *)buf, (unsigned long )(len / 2));
  return (0);
}
}
static int prism2_pda_ok(u8 *buf )
{
  __le16 *pda ;
  int pos ;
  u16 len ;
  u16 pdr ;
  {
  pda = (__le16 *)buf;
  if ((((unsigned int )*buf == 255U && (unsigned int )*(buf + 1UL) == 0U) && (unsigned int )*(buf + 2UL) == 255U) && (unsigned int )*(buf + 3UL) == 0U) {
    return (0);
  } else {
  }
  pos = 0;
  goto ldv_47245;
  ldv_47244:
  len = *(pda + (unsigned long )pos);
  pdr = *(pda + ((unsigned long )pos + 1UL));
  if ((unsigned int )len == 0U || (int )len + pos > 512) {
    return (0);
  } else {
  }
  if ((unsigned int )pdr == 0U && (unsigned int )len == 2U) {
    return (1);
  } else {
  }
  pos = ((int )len + 1) + pos;
  ldv_47245: ;
  if (pos + 1 <= 511) {
    goto ldv_47244;
  } else {
  }
  return (0);
}
}
static int prism2_download_aux_dump_proc_show(struct seq_file *m , void *v )
{
  struct prism2_download_aux_dump *ctx ;
  {
  ctx = (struct prism2_download_aux_dump *)m->private;
  hfa384x_from_aux((ctx->local)->dev, (unsigned int )((long )v) - 1U, 128, (void *)(& ctx->page));
  seq_write(m, (void const *)(& ctx->page), 128UL);
  return (0);
}
}
static void *prism2_download_aux_dump_proc_start(struct seq_file *m , loff_t *_pos )
{
  struct prism2_download_aux_dump *ctx ;
  {
  ctx = (struct prism2_download_aux_dump *)m->private;
  prism2_enable_aux_port((ctx->local)->dev, 1);
  if (*_pos > 65535LL) {
    return ((void *)0);
  } else {
  }
  return ((void *)((unsigned long )*_pos + 1UL));
}
}
static void *prism2_download_aux_dump_proc_next(struct seq_file *m , void *v , loff_t *_pos )
{
  {
  *_pos = *_pos + 1LL;
  if (*_pos > 65535LL) {
    return ((void *)0);
  } else {
  }
  return ((void *)((unsigned long )*_pos + 1UL));
}
}
static void prism2_download_aux_dump_proc_stop(struct seq_file *m , void *v )
{
  struct prism2_download_aux_dump *ctx ;
  {
  ctx = (struct prism2_download_aux_dump *)m->private;
  prism2_enable_aux_port((ctx->local)->dev, 0);
  return;
}
}
static struct seq_operations const prism2_download_aux_dump_proc_seqops = {& prism2_download_aux_dump_proc_start, & prism2_download_aux_dump_proc_stop, & prism2_download_aux_dump_proc_next,
    & prism2_download_aux_dump_proc_show};
static int prism2_download_aux_dump_proc_open(struct inode *inode , struct file *file )
{
  int ret ;
  int tmp ;
  struct seq_file *m ;
  {
  tmp = seq_open_private(file, & prism2_download_aux_dump_proc_seqops, 264);
  ret = tmp;
  if (ret == 0) {
    m = (struct seq_file *)file->private_data;
    m->private = PDE_DATA((struct inode const *)inode);
  } else {
  }
  return (ret);
}
}
static struct file_operations const prism2_download_aux_dump_proc_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & prism2_download_aux_dump_proc_open,
    0, & seq_release_private, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static u8 *prism2_read_pda(struct net_device *dev )
{
  u8 *buf ;
  int res ;
  int i ;
  int found ;
  unsigned int pda_addr[4U] ;
  void *tmp ;
  int tmp___0 ;
  {
  found = 0;
  pda_addr[0] = 8323072U;
  pda_addr[1] = 4128768U;
  pda_addr[2] = 3735552U;
  pda_addr[3] = 8323074U;
  tmp = kmalloc(1024UL, 208U);
  buf = (u8 *)tmp;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return ((u8 *)0U);
  } else {
  }
  prism2_enable_aux_port(dev, 1);
  i = 0;
  goto ldv_47289;
  ldv_47288:
  res = hfa384x_from_aux(dev, pda_addr[i], 1024, (void *)buf);
  if (res != 0) {
    goto ldv_47286;
  } else {
  }
  if (res == 0) {
    tmp___0 = prism2_pda_ok(buf);
    if (tmp___0 != 0) {
      found = 1;
      goto ldv_47287;
    } else {
    }
  } else {
  }
  ldv_47286:
  i = i + 1;
  ldv_47289: ;
  if (i <= 3) {
    goto ldv_47288;
  } else {
  }
  ldv_47287:
  prism2_enable_aux_port(dev, 0);
  if (found == 0) {
    printk("\017%s: valid PDA not found\n", (char *)(& dev->name));
    kfree((void const *)buf);
    buf = (u8 *)0U;
  } else {
  }
  return (buf);
}
}
static int prism2_download_volatile(local_info_t *local , struct prism2_download_data *param )
{
  struct net_device *dev ;
  int ret ;
  int i ;
  u16 param0 ;
  u16 param1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  unsigned long __ms___0 ;
  unsigned long tmp___6 ;
  int tmp___7 ;
  {
  dev = local->dev;
  ret = 0;
  if (local->hw_downloading != 0) {
    printk("\f%s: Already downloading - aborting new request\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  local->hw_downloading = 1;
  if (local->pri_only != 0) {
    hfa384x_disable_interrupts(dev);
  } else {
    prism2_hw_shutdown(dev, 0);
    tmp = prism2_hw_init(dev, 0);
    if (tmp != 0) {
      printk("\f%s: Could not initialize card for download\n", (char *)(& dev->name));
      ret = -1;
      goto out;
    } else {
    }
  }
  tmp___0 = prism2_enable_aux_port(dev, 1);
  if (tmp___0 != 0) {
    printk("\f%s: Could not enable AUX port\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  param0 = (u16 )param->start_addr;
  param1 = (u16 )(param->start_addr >> 16);
  outw(0, (int )((unsigned int )dev->base_addr + 6U));
  outw((int )param1, (int )((unsigned int )dev->base_addr + 4U));
  tmp___1 = hfa384x_cmd_wait(dev, 290, (int )param0);
  if (tmp___1 != 0) {
    printk("\f%s: Download command execution failed\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_47301;
  ldv_47300:
  tmp___2 = hfa384x_to_aux(dev, param->data[i].addr, (int )param->data[i].len, (void *)param->data[i].data);
  if (tmp___2 != 0) {
    printk("\f%s: RAM download at 0x%08x (len=%d) failed\n", (char *)(& dev->name),
           param->data[i].addr, param->data[i].len);
    ret = -1;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_47301: ;
  if ((u32 )i < param->num_areas) {
    goto ldv_47300;
  } else {
  }
  outw((int )param1, (int )((unsigned int )dev->base_addr + 4U));
  outw(0, (int )((unsigned int )dev->base_addr + 6U));
  tmp___3 = hfa384x_cmd_no_wait(dev, 34, (int )param0);
  if (tmp___3 != 0) {
    printk("\f%s: Download command execution failed\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms = 5UL;
    goto ldv_47305;
    ldv_47304:
    __const_udelay(4295000UL);
    ldv_47305:
    tmp___4 = __ms;
    __ms = __ms - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_47304;
    } else {
    }
  }
  outw(16, (int )((unsigned int )dev->base_addr + 52U));
  tmp___5 = prism2_enable_aux_port(dev, 0);
  if (tmp___5 != 0) {
    printk("\017%s: Disabling AUX port failed\n", (char *)(& dev->name));
  } else {
  }
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms___0 = 5UL;
    goto ldv_47309;
    ldv_47308:
    __const_udelay(4295000UL);
    ldv_47309:
    tmp___6 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___6 != 0UL) {
      goto ldv_47308;
    } else {
    }
  }
  local->hw_downloading = 0;
  tmp___7 = prism2_hw_config(dev, 2);
  if (tmp___7 != 0) {
    printk("\f%s: Card configuration after RAM download failed\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  out:
  local->hw_downloading = 0;
  return (ret);
}
}
static int prism2_enable_genesis(local_info_t *local , int hcr )
{
  struct net_device *dev ;
  u8 initseq[4U] ;
  u8 readbuf[4U] ;
  int tmp ;
  {
  dev = local->dev;
  initseq[0] = 0U;
  initseq[1] = 225U;
  initseq[2] = 161U;
  initseq[3] = 255U;
  printk("\017%s: test Genesis mode with HCR 0x%02x\n", (char *)(& dev->name), hcr);
  (*((local->func)->cor_sreset))(local);
  hfa384x_to_aux(dev, 8257592U, 4, (void *)(& initseq));
  (*((local->func)->genesis_reset))(local, hcr);
  hfa384x_from_aux(dev, 8257592U, 4, (void *)(& readbuf));
  hfa384x_to_aux(dev, 8257592U, 4, (void *)(& initseq));
  hfa384x_from_aux(dev, 8257592U, 4, (void *)(& readbuf));
  tmp = memcmp((void const *)(& initseq), (void const *)(& readbuf), 4UL);
  if (tmp == 0) {
    printk("\017Readback test succeeded, HCR 0x%02x\n", hcr);
    return (0);
  } else {
    printk("\017Readback test failed, HCR 0x%02x write %02x %02x %02x %02x read %02x %02x %02x %02x\n",
           hcr, (int )initseq[0], (int )initseq[1], (int )initseq[2], (int )initseq[3],
           (int )readbuf[0], (int )readbuf[1], (int )readbuf[2], (int )readbuf[3]);
    return (1);
  }
}
}
static int prism2_get_ram_size(local_info_t *local )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = prism2_enable_genesis(local, 31);
  if (tmp___0 == 0) {
    ret = 8;
  } else {
    tmp = prism2_enable_genesis(local, 15);
    if (tmp == 0) {
      ret = 16;
    } else {
      ret = -1;
    }
  }
  (*((local->func)->genesis_reset))(local, ret == 16 ? 7 : 23);
  return (ret);
}
}
static int prism2_download_genesis(local_info_t *local , struct prism2_download_data *param )
{
  struct net_device *dev ;
  int ram16 ;
  int i ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long __ms ;
  unsigned long tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  dev = local->dev;
  ram16 = 0;
  ret = 0;
  if (local->hw_downloading != 0) {
    printk("\f%s: Already downloading - aborting new request\n", (char *)(& dev->name));
    return (-16);
  } else {
  }
  if ((unsigned long )(local->func)->genesis_reset == (unsigned long )((void (*)(local_info_t * ,
                                                                                 int ))0) || (unsigned long )(local->func)->cor_sreset == (unsigned long )((void (*)(local_info_t * ))0)) {
    printk("\016%s: Genesis mode downloading not supported with this hwmodel\n", (char *)(& dev->name));
    return (-95);
  } else {
  }
  local->hw_downloading = 1;
  tmp = prism2_enable_aux_port(dev, 1);
  if (tmp != 0) {
    printk("\017%s: failed to enable AUX port\n", (char *)(& dev->name));
    ret = -5;
    goto out;
  } else {
  }
  if (local->sram_type == -1) {
    tmp___1 = prism2_enable_genesis(local, 31);
    if (tmp___1 == 0) {
      ram16 = 0;
    } else {
      tmp___0 = prism2_enable_genesis(local, 15);
      if (tmp___0 == 0) {
        ram16 = 1;
      } else {
        printk("\017%s: Could not initiate genesis mode\n", (char *)(& dev->name));
        ret = -5;
        goto out;
      }
    }
  } else {
    tmp___2 = prism2_enable_genesis(local, local->sram_type == 8 ? 31 : 15);
    if (tmp___2 != 0) {
      printk("\017%s: Failed to set Genesis mode (sram_type=%d)\n", (char *)(& dev->name),
             local->sram_type);
      ret = -5;
      goto out;
    } else {
    }
    ram16 = local->sram_type != 8;
  }
  i = 0;
  goto ldv_47332;
  ldv_47331:
  tmp___3 = hfa384x_to_aux(dev, param->data[i].addr, (int )param->data[i].len, (void *)param->data[i].data);
  if (tmp___3 != 0) {
    printk("\f%s: RAM download at 0x%08x (len=%d) failed\n", (char *)(& dev->name),
           param->data[i].addr, param->data[i].len);
    ret = -5;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_47332: ;
  if ((u32 )i < param->num_areas) {
    goto ldv_47331;
  } else {
  }
  (*((local->func)->genesis_reset))(local, ram16 != 0 ? 7 : 23);
  tmp___4 = prism2_enable_aux_port(dev, 0);
  if (tmp___4 != 0) {
    printk("\017%s: Failed to disable AUX port\n", (char *)(& dev->name));
  } else {
  }
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms = 5UL;
    goto ldv_47336;
    ldv_47335:
    __const_udelay(4295000UL);
    ldv_47336:
    tmp___5 = __ms;
    __ms = __ms - 1UL;
    if (tmp___5 != 0UL) {
      goto ldv_47335;
    } else {
    }
  }
  local->hw_downloading = 0;
  hfa384x_disable_interrupts(dev);
  tmp___6 = prism2_hw_init(dev, 1);
  if (tmp___6 != 0) {
    printk("\017%s: Initialization after genesis mode download failed\n", (char *)(& dev->name));
    ret = -5;
    goto out;
  } else {
  }
  tmp___7 = prism2_hw_init2(dev, 1);
  if (tmp___7 != 0) {
    printk("\017%s: Initialization(2) after genesis mode download failed\n", (char *)(& dev->name));
    ret = -5;
    goto out;
  } else {
  }
  out:
  local->hw_downloading = 0;
  return (ret);
}
}
__inline static int prism2_download_block(struct net_device *dev , u32 addr , u8 *data ,
                                          u32 bufaddr , int rest_len )
{
  u16 param0 ;
  u16 param1 ;
  int block_len ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  block_len = 4096 < rest_len ? 4096 : rest_len;
  param0 = (u16 )addr;
  param1 = (u16 )(addr >> 16);
  outw((int )((unsigned short )block_len), (int )((unsigned int )dev->base_addr + 6U));
  outw((int )param1, (int )((unsigned int )dev->base_addr + 4U));
  tmp = hfa384x_cmd_wait(dev, 546, (int )param0);
  if (tmp != 0) {
    printk("\f%s: Flash download command execution failed\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  tmp___0 = hfa384x_to_aux(dev, bufaddr, block_len, (void *)data);
  if (tmp___0 != 0) {
    printk("\f%s: flash download at 0x%08x (len=%d) failed\n", (char *)(& dev->name),
           addr, block_len);
    return (-1);
  } else {
  }
  outw(0, (int )((unsigned int )dev->base_addr + 6U));
  outw(0, (int )((unsigned int )dev->base_addr + 4U));
  tmp___1 = hfa384x_cmd_wait(dev, 802, 0);
  if (tmp___1 != 0) {
    printk("\f%s: Flash write command execution failed\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  return (block_len);
}
}
static int prism2_download_nonvolatile(local_info_t *local , struct prism2_download_data *dl )
{
  struct net_device *dev ;
  int ret ;
  int i ;
  struct __anonstruct_dlbuffer_318 dlbuffer ;
  u32 bufaddr ;
  int tmp ;
  int tmp___0 ;
  int rest_len ;
  int data_off ;
  int block_len ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  {
  dev = local->dev;
  ret = 0;
  if (local->hw_downloading != 0) {
    printk("\f%s: Already downloading - aborting new request\n", (char *)(& dev->name));
    return (-1);
  } else {
  }
  ret = (*((local->func)->get_rid))(dev, 64769, (void *)(& dlbuffer), 6, 0);
  if (ret < 0) {
    printk("\f%s: Could not read download buffer parameters\n", (char *)(& dev->name));
    goto out;
  } else {
  }
  printk("\017Download buffer: %d bytes at 0x%04x:0x%04x\n", (int )dlbuffer.len, (int )dlbuffer.page,
         (int )dlbuffer.offset);
  bufaddr = (u32 )(((int )dlbuffer.page << 7) + (int )dlbuffer.offset);
  local->hw_downloading = 1;
  if (local->pri_only == 0) {
    prism2_hw_shutdown(dev, 0);
    tmp = prism2_hw_init(dev, 0);
    if (tmp != 0) {
      printk("\f%s: Could not initialize card for download\n", (char *)(& dev->name));
      ret = -1;
      goto out;
    } else {
    }
  } else {
  }
  hfa384x_disable_interrupts(dev);
  tmp___0 = prism2_enable_aux_port(dev, 1);
  if (tmp___0 != 0) {
    printk("\f%s: Could not enable AUX port\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  printk("\017%s: starting flash download\n", (char *)(& dev->name));
  i = 0;
  goto ldv_47369;
  ldv_47368:
  rest_len = (int )dl->data[i].len;
  data_off = 0;
  goto ldv_47366;
  ldv_47365:
  block_len = prism2_download_block(dev, dl->data[i].addr + (u32 )data_off, dl->data[i].data + (unsigned long )data_off,
                                    bufaddr, rest_len);
  if (block_len < 0) {
    ret = -1;
    goto out;
  } else {
  }
  rest_len = rest_len - block_len;
  data_off = data_off + block_len;
  ldv_47366: ;
  if (rest_len > 0) {
    goto ldv_47365;
  } else {
  }
  i = i + 1;
  ldv_47369: ;
  if ((u32 )i < dl->num_areas) {
    goto ldv_47368;
  } else {
  }
  outw(0, (int )((unsigned int )dev->base_addr + 4U));
  outw(0, (int )((unsigned int )dev->base_addr + 6U));
  tmp___1 = hfa384x_cmd_wait(dev, 34, 0);
  if (tmp___1 != 0) {
    printk("\f%s: Download command execution failed\n", (char *)(& dev->name));
    ret = -1;
    goto out;
  } else {
  }
  tmp___2 = prism2_enable_aux_port(dev, 0);
  if (tmp___2 != 0) {
    printk("\017%s: Disabling AUX port failed\n", (char *)(& dev->name));
  } else {
  }
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms = 5UL;
    goto ldv_47373;
    ldv_47372:
    __const_udelay(4295000UL);
    ldv_47373:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_47372;
    } else {
    }
  }
  (*((local->func)->hw_reset))(dev);
  local->hw_downloading = 0;
  tmp___4 = prism2_hw_config(dev, 2);
  if (tmp___4 != 0) {
    printk("\f%s: Card configuration after flash download failed\n", (char *)(& dev->name));
    ret = -1;
  } else {
    printk("\016%s: Card initialized successfully after flash download\n", (char *)(& dev->name));
  }
  out:
  local->hw_downloading = 0;
  return (ret);
}
}
static void prism2_download_free_data(struct prism2_download_data *dl )
{
  int i ;
  {
  if ((unsigned long )dl == (unsigned long )((struct prism2_download_data *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_47380;
  ldv_47379:
  kfree((void const *)dl->data[i].data);
  i = i + 1;
  ldv_47380: ;
  if ((u32 )i < dl->num_areas) {
    goto ldv_47379;
  } else {
  }
  kfree((void const *)dl);
  return;
}
}
static int prism2_download(local_info_t *local , struct prism2_download_param *param )
{
  int ret ;
  int i ;
  u32 total_len ;
  struct prism2_download_data *dl ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  {
  ret = 0;
  total_len = 0U;
  dl = (struct prism2_download_data *)0;
  printk("\017prism2_download: dl_cmd=%d start_addr=0x%08x num_areas=%d\n", param->dl_cmd,
         param->start_addr, param->num_areas);
  if (param->num_areas > 100U) {
    ret = -22;
    goto out;
  } else {
  }
  tmp = kzalloc(((unsigned long )param->num_areas + 1UL) * 16UL, 208U);
  dl = (struct prism2_download_data *)tmp;
  if ((unsigned long )dl == (unsigned long )((struct prism2_download_data *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  dl->dl_cmd = param->dl_cmd;
  dl->start_addr = param->start_addr;
  dl->num_areas = param->num_areas;
  i = 0;
  goto ldv_47392;
  ldv_47391:
  dl->data[i].addr = param->data[i].addr;
  dl->data[i].len = param->data[i].len;
  total_len = param->data[i].len + total_len;
  if (param->data[i].len > 131072U || total_len > 262144U) {
    ret = -7;
    goto out;
  } else {
  }
  tmp___0 = kmalloc((size_t )dl->data[i].len, 208U);
  dl->data[i].data = (u8 *)tmp___0;
  if ((unsigned long )dl->data[i].data == (unsigned long )((u8 *)0U)) {
    ret = -12;
    goto out;
  } else {
  }
  tmp___1 = copy_from_user((void *)dl->data[i].data, (void const *)param->data[i].ptr,
                           (unsigned long )param->data[i].len);
  if (tmp___1 != 0UL) {
    ret = -14;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_47392: ;
  if ((u32 )i < param->num_areas) {
    goto ldv_47391;
  } else {
  }
  switch (param->dl_cmd) {
  case 1U: ;
  case 5U:
  ret = prism2_download_volatile(local, dl);
  goto ldv_47396;
  case 4U: ;
  case 6U:
  ret = prism2_download_genesis(local, dl);
  goto ldv_47396;
  case 3U:
  ret = prism2_download_nonvolatile(local, dl);
  goto ldv_47396;
  default:
  printk("\017%s: unsupported download command %d\n", (char *)(& (local->dev)->name),
         param->dl_cmd);
  ret = -22;
  goto ldv_47396;
  }
  ldv_47396: ;
  out: ;
  if ((ret == 0 && (unsigned long )dl != (unsigned long )((struct prism2_download_data *)0)) && param->dl_cmd == 6U) {
    prism2_download_free_data(local->dl_pri);
    local->dl_pri = dl;
  } else
  if ((ret == 0 && (unsigned long )dl != (unsigned long )((struct prism2_download_data *)0)) && param->dl_cmd == 5U) {
    prism2_download_free_data(local->dl_sec);
    local->dl_sec = dl;
  } else {
    prism2_download_free_data(dl);
  }
  return (ret);
}
}
static void prism2_plx_cor_sreset(local_info_t *local )
{
  unsigned char corsave ;
  struct hostap_plx_priv *hw_priv ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  unsigned long __ms___2 ;
  unsigned long tmp___2 ;
  {
  hw_priv = (struct hostap_plx_priv *)local->hw_priv;
  printk("\017%s: Doing reset via direct COR access.\n", dev_info);
  if ((unsigned long )hw_priv->attr_mem == (unsigned long )((void *)0)) {
    corsave = inb((int )hw_priv->cor_offset);
    outb((int )((unsigned int )corsave | 128U), (int )hw_priv->cor_offset);
    if (1) {
      __const_udelay(8590000UL);
    } else {
      __ms = 2UL;
      goto ldv_47408;
      ldv_47407:
      __const_udelay(4295000UL);
      ldv_47408:
      tmp = __ms;
      __ms = __ms - 1UL;
      if (tmp != 0UL) {
        goto ldv_47407;
      } else {
      }
    }
    outb((int )corsave & 127, (int )hw_priv->cor_offset);
    if (1) {
      __const_udelay(8590000UL);
    } else {
      __ms___0 = 2UL;
      goto ldv_47412;
      ldv_47411:
      __const_udelay(4295000UL);
      ldv_47412:
      tmp___0 = __ms___0;
      __ms___0 = __ms___0 - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_47411;
      } else {
      }
    }
  } else {
    corsave = readb((void const volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    writeb((int )((unsigned int )corsave | 128U), (void volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    if (1) {
      __const_udelay(8590000UL);
    } else {
      __ms___1 = 2UL;
      goto ldv_47416;
      ldv_47415:
      __const_udelay(4295000UL);
      ldv_47416:
      tmp___1 = __ms___1;
      __ms___1 = __ms___1 - 1UL;
      if (tmp___1 != 0UL) {
        goto ldv_47415;
      } else {
      }
    }
    writeb((int )corsave & 127, (void volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    if (1) {
      __const_udelay(8590000UL);
    } else {
      __ms___2 = 2UL;
      goto ldv_47420;
      ldv_47419:
      __const_udelay(4295000UL);
      ldv_47420:
      tmp___2 = __ms___2;
      __ms___2 = __ms___2 - 1UL;
      if (tmp___2 != 0UL) {
        goto ldv_47419;
      } else {
      }
    }
  }
  return;
}
}
static void prism2_plx_genesis_reset(local_info_t *local , int hcr )
{
  unsigned char corsave ;
  struct hostap_plx_priv *hw_priv ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  unsigned long __ms___2 ;
  unsigned long tmp___2 ;
  unsigned long __ms___3 ;
  unsigned long tmp___3 ;
  unsigned long __ms___4 ;
  unsigned long tmp___4 ;
  {
  hw_priv = (struct hostap_plx_priv *)local->hw_priv;
  if ((unsigned long )hw_priv->attr_mem == (unsigned long )((void *)0)) {
    corsave = inb((int )hw_priv->cor_offset);
    outb((int )((unsigned int )corsave | 128U), (int )hw_priv->cor_offset);
    __ms = 10UL;
    goto ldv_47430;
    ldv_47429:
    __const_udelay(4295000UL);
    ldv_47430:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_47429;
    } else {
    }
    outb((int )((unsigned char )hcr), (int )(hw_priv->cor_offset + 2U));
    __ms___0 = 10UL;
    goto ldv_47434;
    ldv_47433:
    __const_udelay(4295000UL);
    ldv_47434:
    tmp___0 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_47433;
    } else {
    }
    outb((int )corsave & 127, (int )hw_priv->cor_offset);
    __ms___1 = 10UL;
    goto ldv_47438;
    ldv_47437:
    __const_udelay(4295000UL);
    ldv_47438:
    tmp___1 = __ms___1;
    __ms___1 = __ms___1 - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_47437;
    } else {
    }
  } else {
    corsave = readb((void const volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    writeb((int )((unsigned int )corsave | 128U), (void volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    __ms___2 = 10UL;
    goto ldv_47442;
    ldv_47441:
    __const_udelay(4295000UL);
    ldv_47442:
    tmp___2 = __ms___2;
    __ms___2 = __ms___2 - 1UL;
    if (tmp___2 != 0UL) {
      goto ldv_47441;
    } else {
    }
    writeb((int )((unsigned char )hcr), (void volatile *)(hw_priv->attr_mem + ((unsigned long )hw_priv->cor_offset + 2UL)));
    __ms___3 = 10UL;
    goto ldv_47446;
    ldv_47445:
    __const_udelay(4295000UL);
    ldv_47446:
    tmp___3 = __ms___3;
    __ms___3 = __ms___3 - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_47445;
    } else {
    }
    writeb((int )corsave & 127, (void volatile *)hw_priv->attr_mem + (unsigned long )hw_priv->cor_offset);
    __ms___4 = 10UL;
    goto ldv_47450;
    ldv_47449:
    __const_udelay(4295000UL);
    ldv_47450:
    tmp___4 = __ms___4;
    __ms___4 = __ms___4 - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_47449;
    } else {
    }
  }
  return;
}
}
static struct prism2_helper_functions prism2_plx_funcs =
     {(int (*)(local_info_t * ))0, & prism2_plx_cor_sreset, & prism2_plx_genesis_reset,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};
static int prism2_plx_check_cis(void *attr_mem , int attr_len , unsigned int *cor_offset ,
                                unsigned int *cor_index )
{
  u8 *cis ;
  int i ;
  int pos ;
  unsigned int rmsz ;
  unsigned int rasz ;
  unsigned int manfid1 ;
  unsigned int manfid2 ;
  struct prism2_plx_manfid *manfid ;
  void *tmp ;
  {
  tmp = kmalloc(256UL, 208U);
  cis = (u8 *)tmp;
  if ((unsigned long )cis == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_47468;
  ldv_47467:
  *(cis + (unsigned long )i) = readb((void const volatile *)attr_mem + (unsigned long )(i * 2));
  i = i + 1;
  ldv_47468: ;
  if (i <= 255) {
    goto ldv_47467;
  } else {
  }
  printk("\017%s: CIS: %02x %02x %02x %02x %02x %02x ...\n", dev_info, (int )*cis,
         (int )*(cis + 1UL), (int )*(cis + 2UL), (int )*(cis + 3UL), (int )*(cis + 4UL),
         (int )*(cis + 5UL));
  *cor_offset = 992U;
  *cor_index = 1U;
  manfid2 = 0U;
  manfid1 = manfid2;
  pos = 0;
  goto ldv_47478;
  ldv_47477: ;
  if ((pos + 2) + (int )*(cis + ((unsigned long )pos + 1UL)) > 256) {
    goto cis_error;
  } else {
  }
  switch ((int )*(cis + (unsigned long )pos)) {
  case 26: ;
  if ((unsigned int )*(cis + ((unsigned long )pos + 1UL)) <= 1U) {
    goto cis_error;
  } else {
  }
  rmsz = (unsigned int )(((int )*(cis + ((unsigned long )pos + 2UL)) & 60) >> 2);
  rasz = (unsigned int )*(cis + ((unsigned long )pos + 2UL)) & 3U;
  if ((rasz + rmsz) + 4U > (unsigned int )*(cis + ((unsigned long )pos + 1UL))) {
    goto cis_error;
  } else {
  }
  *cor_index = (unsigned int )*(cis + ((unsigned long )pos + 3UL)) & 63U;
  *cor_offset = 0U;
  i = 0;
  goto ldv_47473;
  ldv_47472:
  *cor_offset = *cor_offset + (unsigned int )((int )*(cis + (unsigned long )((pos + 4) + i)) << i * 8);
  i = i + 1;
  ldv_47473: ;
  if ((unsigned int )i <= rasz) {
    goto ldv_47472;
  } else {
  }
  printk("\017%s: cor_index=0x%x cor_offset=0x%x\n", dev_info, *cor_index, *cor_offset);
  if (*cor_offset > (unsigned int )attr_len) {
    printk("\v%s: COR offset not within attr_mem\n", dev_info);
    kfree((void const *)cis);
    return (-1);
  } else {
  }
  goto ldv_47475;
  case 32: ;
  if ((unsigned int )*(cis + ((unsigned long )pos + 1UL)) <= 3U) {
    goto cis_error;
  } else {
  }
  manfid1 = (unsigned int )((int )*(cis + ((unsigned long )pos + 2UL)) + ((int )*(cis + ((unsigned long )pos + 3UL)) << 8));
  manfid2 = (unsigned int )((int )*(cis + ((unsigned long )pos + 4UL)) + ((int )*(cis + ((unsigned long )pos + 5UL)) << 8));
  printk("\017%s: manfid=0x%04x, 0x%04x\n", dev_info, manfid1, manfid2);
  goto ldv_47475;
  }
  ldv_47475:
  pos = ((int )*(cis + ((unsigned long )pos + 1UL)) + 2) + pos;
  ldv_47478: ;
  if (pos <= 254 && (unsigned int )*(cis + (unsigned long )pos) != 255U) {
    goto ldv_47477;
  } else {
  }
  if (pos > 255 || (unsigned int )*(cis + (unsigned long )pos) != 255U) {
    goto cis_error;
  } else {
  }
  manfid = (struct prism2_plx_manfid *)(& prism2_plx_known_manfids);
  goto ldv_47481;
  ldv_47480: ;
  if ((unsigned int )manfid->manfid1 == manfid1 && (unsigned int )manfid->manfid2 == manfid2) {
    kfree((void const *)cis);
    return (0);
  } else {
  }
  manfid = manfid + 1;
  ldv_47481: ;
  if ((unsigned int )manfid->manfid1 != 0U) {
    goto ldv_47480;
  } else {
  }
  printk("\016%s: unknown manfid 0x%04x, 0x%04x - assuming this is not supported card\n",
         dev_info, manfid1, manfid2);
  goto fail;
  cis_error:
  printk("\f%s: invalid CIS data\n", dev_info);
  fail:
  kfree((void const *)cis);
  if (ignore_cis != 0) {
    printk("\016%s: ignore_cis parameter set - ignoring errors during CIS verification\n",
           dev_info);
    return (0);
  } else {
  }
  return (-1);
}
}
static int prism2_plx_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  unsigned int pccard_ioaddr ;
  unsigned int plx_ioaddr ;
  unsigned long pccard_attr_mem ;
  unsigned int pccard_attr_len ;
  void *attr_mem ;
  unsigned int cor_offset ;
  unsigned int cor_index ;
  u32 reg ;
  local_info_t *local ;
  struct net_device *dev ;
  struct hostap_interface *iface ;
  int cards_found ;
  int irq_registered ;
  int tmd7160 ;
  struct hostap_plx_priv *hw_priv ;
  void *tmp ;
  int tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  unsigned char tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  attr_mem = (void *)0;
  cor_offset = 0U;
  cor_index = 0U;
  local = (local_info_t *)0;
  dev = (struct net_device *)0;
  irq_registered = 0;
  tmp = kzalloc(16UL, 208U);
  hw_priv = (struct hostap_plx_priv *)tmp;
  if ((unsigned long )hw_priv == (unsigned long )((struct hostap_plx_priv *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = pci_enable_device(pdev);
  if (tmp___0 != 0) {
    goto err_out_free;
  } else {
  }
  tmd7160 = (unsigned int )pdev->vendor == 5608U && (unsigned int )pdev->device == 305U;
  plx_ioaddr = (unsigned int )pdev->resource[1].start;
  pccard_ioaddr = (unsigned int )pdev->resource[tmd7160 != 0 ? 2 : 3].start;
  if (tmd7160 != 0) {
    attr_mem = (void *)0;
    printk("\016TMD7160 PCI/PCMCIA adapter: io=0x%x, irq=%d, pccard_io=0x%x\n", plx_ioaddr,
           pdev->irq, pccard_ioaddr);
    cor_offset = plx_ioaddr;
    cor_index = 4U;
    outb((int )((unsigned int )((unsigned char )cor_index) | 65U), (int )plx_ioaddr);
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_47506;
      ldv_47505:
      __const_udelay(4295000UL);
      ldv_47506:
      tmp___1 = __ms;
      __ms = __ms - 1UL;
      if (tmp___1 != 0UL) {
        goto ldv_47505;
      } else {
      }
    }
    tmp___2 = inb((int )plx_ioaddr);
    reg = (u32 )tmp___2;
    if ((cor_index | 65U) != reg) {
      printk("\v%s: Error setting COR (expected=0x%02x, was=0x%02x)\n", dev_info,
             cor_index | 65U, reg);
      goto fail;
    } else {
    }
  } else {
    pccard_attr_mem = (unsigned long )pdev->resource[2].start;
    pccard_attr_len = pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? ((unsigned int )pdev->resource[2].end - (unsigned int )pdev->resource[2].start) + 1U : 0U;
    if (pccard_attr_len <= 511U) {
      goto fail;
    } else {
    }
    attr_mem = ioremap((resource_size_t )pccard_attr_mem, (unsigned long )pccard_attr_len);
    if ((unsigned long )attr_mem == (unsigned long )((void *)0)) {
      printk("\v%s: cannot remap attr_mem\n", dev_info);
      goto fail;
    } else {
    }
    printk("\016PLX9052 PCI/PCMCIA adapter: mem=0x%lx, plx_io=0x%x, irq=%d, pccard_io=0x%x\n",
           pccard_attr_mem, plx_ioaddr, pdev->irq, pccard_ioaddr);
    tmp___3 = prism2_plx_check_cis(attr_mem, (int )pccard_attr_len, & cor_offset,
                                   & cor_index);
    if (tmp___3 != 0) {
      printk("\016Unknown PC Card CIS - not a Prism2/2.5 card?\n");
      goto fail;
    } else {
    }
    printk("\017Prism2/2.5 PC Card detected in PLX9052 adapter\n");
    writeb((int )((unsigned int )((unsigned char )cor_index) | 65U), (void volatile *)attr_mem + (unsigned long )cor_offset);
    reg = inl((int )(plx_ioaddr + 76U));
    printk("\017PLX_INTCSR=0x%x\n", reg);
    if (((unsigned long )reg & 64UL) == 0UL) {
      outl(reg | 64U, (int )(plx_ioaddr + 76U));
      tmp___4 = inl((int )(plx_ioaddr + 76U));
      if (((unsigned long )tmp___4 & 64UL) == 0UL) {
        printk("\f%s: Could not enable Local Interrupts\n", dev_info);
        goto fail;
      } else {
      }
    } else {
    }
    reg = inl((int )(plx_ioaddr + 80U));
    printk("\017PLX_CNTRL=0x%x (Serial EEPROM present=%d)\n", reg, ((unsigned long )reg & 268435456UL) != 0UL);
  }
  dev = prism2_init_local_data(& prism2_plx_funcs, cards_found, & pdev->dev);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    goto fail;
  } else {
  }
  tmp___5 = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp___5;
  local = iface->local;
  local->hw_priv = (void *)hw_priv;
  cards_found = cards_found + 1;
  dev->irq = (int )pdev->irq;
  dev->base_addr = (unsigned long )pccard_ioaddr;
  hw_priv->attr_mem = attr_mem;
  hw_priv->cor_offset = cor_offset;
  pci_set_drvdata(pdev, (void *)dev);
  tmp___6 = ldv_request_irq_21((unsigned int )dev->irq, & prism2_interrupt, 128UL,
                               (char const *)(& dev->name), (void *)dev);
  if (tmp___6 != 0) {
    printk("\f%s: request_irq failed\n", (char *)(& dev->name));
    goto fail;
  } else {
    irq_registered = 1;
  }
  tmp___7 = prism2_hw_config(dev, 1);
  if (tmp___7 != 0) {
    printk("\017%s: hardware initialization failed\n", dev_info);
    goto fail;
  } else {
  }
  tmp___8 = hostap_hw_ready(dev);
  return (tmp___8);
  fail: ;
  if (irq_registered != 0 && (unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    ldv_free_irq_22((unsigned int )dev->irq, (void *)dev);
  } else {
  }
  if ((unsigned long )attr_mem != (unsigned long )((void *)0)) {
    iounmap((void volatile *)attr_mem);
  } else {
  }
  pci_disable_device(pdev);
  prism2_free_local_data(dev);
  err_out_free:
  kfree((void const *)hw_priv);
  return (-19);
}
}
static void prism2_plx_remove(struct pci_dev *pdev )
{
  struct net_device *dev ;
  struct hostap_interface *iface ;
  struct hostap_plx_priv *hw_priv ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  iface = (struct hostap_interface *)tmp___0;
  hw_priv = (struct hostap_plx_priv *)(iface->local)->hw_priv;
  prism2_plx_cor_sreset(iface->local);
  hfa384x_disable_interrupts(dev);
  if ((unsigned long )hw_priv->attr_mem != (unsigned long )((void *)0)) {
    iounmap((void volatile *)hw_priv->attr_mem);
  } else {
  }
  if (dev->irq != 0) {
    ldv_free_irq_23((unsigned int )dev->irq, (void *)dev);
  } else {
  }
  prism2_free_local_data(dev);
  kfree((void const *)hw_priv);
  pci_disable_device(pdev);
  return;
}
}
struct pci_device_id const __mod_pci__prism2_plx_id_table_device_table ;
static struct pci_driver prism2_plx_driver =
     {{0, 0}, "hostap_plx", (struct pci_device_id const *)(& prism2_plx_id_table),
    & prism2_plx_probe, & prism2_plx_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                   0, 0, 0, 0, 0,
                                                                   0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int prism2_plx_driver_init(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& prism2_plx_driver, & __this_module, "hostap_plx");
  return (tmp);
}
}
static void prism2_plx_driver_exit(void)
{
  {
  pci_unregister_driver(& prism2_plx_driver);
  return;
}
}
void *ldv_retval_2 ;
int ldv_retval_0 ;
int ldv_retval_5 ;
int ldv_retval_4 ;
void ldv_initialize(void) ;
void *ldv_retval_1 ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_3) {
    ldv_timer_state_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_file_operations_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  prism2_download_aux_dump_proc_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  prism2_download_aux_dump_proc_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  prism2_registers_proc_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  prism2_registers_proc_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void ldv_initialize_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  prism2_plx_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void choose_timer_3(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_3 = 2;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& prism2_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = prism2_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_47592;
    default:
    ldv_stop();
    }
    ldv_47592: ;
  } else {
  }
  return (state);
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3 == (unsigned long )timer) {
    if (ldv_timer_state_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3 = timer;
      ldv_timer_list_3->data = data;
      ldv_timer_state_3 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_3(timer);
  ldv_timer_list_3->data = data;
  return;
}
}
int reg_timer_3(struct timer_list *timer )
{
  {
  ldv_timer_list_3 = timer;
  ldv_timer_state_3 = 1;
  return (0);
}
}
void ldv_seq_operations_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(264UL);
  prism2_download_aux_dump_proc_seqops_group1 = (struct seq_file *)tmp;
  return;
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_47611;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_47611;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_47611;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_47611;
  default:
  ldv_stop();
  }
  ldv_47611: ;
  return;
}
}
int main(void)
{
  loff_t ldvarg1 ;
  loff_t tmp ;
  char *ldvarg4 ;
  void *tmp___0 ;
  size_t ldvarg3 ;
  size_t tmp___1 ;
  int ldvarg0 ;
  int tmp___2 ;
  loff_t *ldvarg2 ;
  void *tmp___3 ;
  size_t ldvarg8 ;
  size_t tmp___4 ;
  loff_t *ldvarg7 ;
  void *tmp___5 ;
  char *ldvarg9 ;
  void *tmp___6 ;
  int ldvarg5 ;
  int tmp___7 ;
  loff_t ldvarg6 ;
  loff_t tmp___8 ;
  struct pci_device_id *ldvarg10 ;
  void *tmp___9 ;
  local_info_t *ldvarg11 ;
  void *tmp___10 ;
  int ldvarg13 ;
  int tmp___11 ;
  local_info_t *ldvarg12 ;
  void *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  {
  tmp = __VERIFIER_nondet_loff_t();
  ldvarg1 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg4 = (char *)tmp___0;
  tmp___1 = __VERIFIER_nondet_size_t();
  ldvarg3 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg0 = tmp___2;
  tmp___3 = ldv_zalloc(8UL);
  ldvarg2 = (loff_t *)tmp___3;
  tmp___4 = __VERIFIER_nondet_size_t();
  ldvarg8 = tmp___4;
  tmp___5 = ldv_zalloc(8UL);
  ldvarg7 = (loff_t *)tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg9 = (char *)tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg5 = tmp___7;
  tmp___8 = __VERIFIER_nondet_loff_t();
  ldvarg6 = tmp___8;
  tmp___9 = ldv_zalloc(32UL);
  ldvarg10 = (struct pci_device_id *)tmp___9;
  tmp___10 = ldv_zalloc(3424UL);
  ldvarg11 = (local_info_t *)tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg13 = tmp___11;
  tmp___12 = ldv_zalloc(3424UL);
  ldvarg12 = (local_info_t *)tmp___12;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_47687:
  tmp___13 = __VERIFIER_nondet_int();
  switch (tmp___13) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_6 == 2) {
      seq_release_private(prism2_download_aux_dump_proc_fops_group1, prism2_download_aux_dump_proc_fops_group2);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47647;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      seq_read(prism2_download_aux_dump_proc_fops_group2, ldvarg4, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_47647;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      seq_lseek(prism2_download_aux_dump_proc_fops_group2, ldvarg1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_47647;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = prism2_download_aux_dump_proc_open(prism2_download_aux_dump_proc_fops_group1,
                                                        prism2_download_aux_dump_proc_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47647;
    default:
    ldv_stop();
    }
    ldv_47647: ;
  } else {
  }
  goto ldv_47652;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3(ldv_timer_list_3);
  } else {
  }
  goto ldv_47652;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_2 = prism2_download_aux_dump_proc_start(prism2_download_aux_dump_proc_seqops_group1,
                                                         prism2_download_aux_dump_proc_seqops_group3);
      if ((unsigned long )ldv_retval_2 != (unsigned long )((void *)0)) {
        ldv_state_variable_7 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
      if ((unsigned long )ldv_retval_2 == (unsigned long )((void *)0)) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47656;
    case 1: ;
    if (ldv_state_variable_7 == 3) {
      prism2_download_aux_dump_proc_stop(prism2_download_aux_dump_proc_seqops_group1,
                                         prism2_download_aux_dump_proc_seqops_group2);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      prism2_download_aux_dump_proc_stop(prism2_download_aux_dump_proc_seqops_group1,
                                         prism2_download_aux_dump_proc_seqops_group2);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47656;
    case 2: ;
    if (ldv_state_variable_7 == 2) {
      prism2_download_aux_dump_proc_show(prism2_download_aux_dump_proc_seqops_group1,
                                         (void *)prism2_download_aux_dump_proc_seqops_group3);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_47656;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      ldv_retval_1 = prism2_download_aux_dump_proc_next(prism2_download_aux_dump_proc_seqops_group1,
                                                        prism2_download_aux_dump_proc_seqops_group2,
                                                        prism2_download_aux_dump_proc_seqops_group3);
      if ((unsigned long )ldv_retval_1 == (unsigned long )((void *)0)) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
      if ((unsigned long )ldv_retval_1 != (unsigned long )((void *)0)) {
        ldv_state_variable_7 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47656;
    default:
    ldv_stop();
    }
    ldv_47656: ;
  } else {
  }
  goto ldv_47652;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_47652;
  case 4: ;
  if (ldv_state_variable_8 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_8 == 2) {
      single_release(prism2_registers_proc_fops_group1, prism2_registers_proc_fops_group2);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47664;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      seq_read(prism2_registers_proc_fops_group2, ldvarg9, ldvarg8, ldvarg7);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_47664;
    case 2: ;
    if (ldv_state_variable_8 == 2) {
      seq_lseek(prism2_registers_proc_fops_group2, ldvarg6, ldvarg5);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_47664;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_3 = prism2_registers_proc_open(prism2_registers_proc_fops_group1,
                                                prism2_registers_proc_fops_group2);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47664;
    default:
    ldv_stop();
    }
    ldv_47664: ;
  } else {
  }
  goto ldv_47652;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_47652;
  case 6: ;
  if (ldv_state_variable_4 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_4 = prism2_plx_probe(prism2_plx_driver_group0, (struct pci_device_id const *)ldvarg10);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47672;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      prism2_plx_remove(prism2_plx_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47672;
    default:
    ldv_stop();
    }
    ldv_47672: ;
  } else {
  }
  goto ldv_47652;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      prism2_plx_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_47678;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_5 = prism2_plx_driver_init();
      if (ldv_retval_5 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_5 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_state_variable_7 = 1;
        ldv_seq_operations_7();
        ldv_state_variable_4 = 1;
        ldv_initialize_pci_driver_4();
        ldv_state_variable_6 = 1;
        ldv_file_operations_6();
        ldv_state_variable_8 = 1;
        ldv_file_operations_8();
      } else {
      }
    } else {
    }
    goto ldv_47678;
    default:
    ldv_stop();
    }
    ldv_47678: ;
  } else {
  }
  goto ldv_47652;
  case 8: ;
  if (ldv_state_variable_5 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      prism2_plx_genesis_reset(ldvarg12, ldvarg13);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_47683;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      prism2_plx_cor_sreset(ldvarg11);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_47683;
    default:
    ldv_stop();
    }
    ldv_47683: ;
  } else {
  }
  goto ldv_47652;
  default:
  ldv_stop();
  }
  ldv_47652: ;
  goto ldv_47687;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
struct sk_buff *ldv_skb_dequeue_13(struct sk_buff_head *ldv_func_arg1 )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
struct sk_buff *ldv_skb_dequeue_15(struct sk_buff_head *ldv_func_arg1 )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
struct sk_buff *ldv_skb_dequeue_17(struct sk_buff_head *ldv_func_arg1 )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
int ldv_del_timer_19(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_20(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_23(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static void ldv_error(void);
Element set_impl[15] ;
int last_index = 0;
__inline static void ldv_set_init(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_init(Set set )
{
  {
  set = set_impl;
  last_index = 0;
  return;
}
}
__inline static void ldv_set_add(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_add(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return;
    } else {
    }
    i = i + 1;
  }
  if (last_index < 15) {
    set_impl[last_index] = e;
    last_index = last_index + 1;
  } else {
  }
  return;
}
}
__inline static void ldv_set_remove(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_remove(Set set , Element e )
{
  int i ;
  int deleted_index ;
  {
  deleted_index = -1;
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      deleted_index = i;
      break;
    } else {
    }
    i = i + 1;
  }
  if (deleted_index != -1) {
    i = deleted_index + 1;
    while (1) {
      if (i < last_index) {
      } else {
        break;
      }
      set_impl[i - 1] = set_impl[i];
      i = i + 1;
    }
    last_index = last_index - 1;
  } else {
  }
  return;
}
}
__inline static int ldv_set_contains(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_contains(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return (1);
    } else {
    }
    i = i + 1;
  }
  return (0);
}
}
__inline static int ldv_set_is_empty(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_is_empty(Set set )
{
  {
  return (last_index == 0);
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp___7 ;
  int tmp___8 ;
  {
  if (! ptr) {
    tmp___8 = 1;
  } else {
    tmp___7 = ldv_is_err((unsigned long )ptr);
    if (tmp___7) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  }
  return (tmp___8);
}
}
Set LDV_SKBS ;
struct sk_buff___0 *ldv_skb_alloc(void)
{
  void *skb ;
  void *tmp___7 ;
  {
  tmp___7 = ldv_zalloc(sizeof(struct sk_buff___0 ));
  skb = (struct sk_buff___0 *)tmp___7;
  if (! skb) {
    return ((void *)0);
  } else {
    ldv_set_add(LDV_SKBS, skb);
    return (skb);
  }
}
}
void ldv_initialize(void)
{
  {
  ldv_set_init(LDV_SKBS);
  return;
}
}
void ldv_skb_free(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return;
}
}
int ldv_skb_free_int(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return (0);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void) ;
struct sk_buff___0 *ldv_dev_alloc_skb(void)
{
  void *skb ;
  int tmp___7 ;
  {
  tmp___7 = (int )ldv_netdev_alloc_skb();
  skb = tmp___7;
  return (skb);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void)
{
  struct sk_buff___0 *tmp___7 ;
  {
  tmp___7 = ldv_skb_alloc();
  return (tmp___7);
}
}
int ldv_skb_current(struct sk_buff___0 *skb )
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_contains(LDV_SKBS, skb);
  if (tmp___7) {
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_check_final_state(void)
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_is_empty(LDV_SKBS);
  if (tmp___7) {
  } else {
    ldv_error();
  }
  return;
}
}
void *external_alloc(void);
void *PDE_DATA(const struct inode *arg0) {
  return (void *)external_alloc();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_alloc_name(struct net_device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int hostap_80211_get_hdrlen(__le16 arg0) {
  return __VERIFIER_nondet_int();
}
void hostap_80211_rx(struct net_device *arg0, struct sk_buff *arg1, struct hostap_80211_rx_status *arg2) {
  return;
}
void *external_alloc(void);
struct net_device *hostap_add_interface(struct local_info *arg0, int arg1, int arg2, const char *arg3, const char *arg4) {
  return (struct net_device *)external_alloc();
}
void hostap_check_sta_fw_version(struct ap_data *arg0, int arg1) {
  return;
}
void hostap_dump_rx_header(const char *arg0, const struct hfa384x_rx_frame *arg1) {
  return;
}
void hostap_dump_tx_header(const char *arg0, const struct hfa384x_tx_frame *arg1) {
  return;
}
void hostap_free_data(struct ap_data *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 hostap_get_porttype(local_info_t *arg0) {
  return __VERIFIER_nondet_ushort();
}
void hostap_handle_sta_tx_exc(local_info_t *arg0, struct sk_buff *arg1) {
  return;
}
void hostap_info_init(local_info_t *arg0) {
  return;
}
void hostap_info_process(local_info_t *arg0, struct sk_buff *arg1) {
  return;
}
void hostap_init_ap_proc(local_info_t *arg0) {
  return;
}
void hostap_init_data(local_info_t *arg0) {
  return;
}
void hostap_init_proc(local_info_t *arg0) {
  return;
}
void hostap_remove_interface(struct net_device *arg0, int arg1, int arg2) {
  return;
}
void hostap_remove_proc(local_info_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int hostap_set_antsel(local_info_t *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_auth_algs(local_info_t *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_encryption(local_info_t *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_hostapd(local_info_t *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_hostapd_sta(local_info_t *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_roaming(local_info_t *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_string(struct net_device *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hostap_set_word(struct net_device *arg0, int arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
void hostap_setup_dev(struct net_device *arg0, local_info_t *arg1, int arg2) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void lib80211_crypt_info_free(struct lib80211_crypt_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lib80211_crypt_info_init(struct lib80211_crypt_info *arg0, char *arg1, spinlock_t *arg2) {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int prism2_update_comms_qual(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdevice(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open_private(struct file *arg0, const struct seq_operations *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_release_private(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_write(struct seq_file *arg0, const void *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_queue_purge(struct sk_buff_head *arg0) {
  return;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wireless_send_event(struct net_device *arg0, unsigned int arg1, union iwreq_data *arg2, const char *arg3) {
  return;
}
void yield() {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
